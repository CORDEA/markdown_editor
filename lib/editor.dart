import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'editor.freezed.dart';

class MarkdownTextEditingController extends TextEditingController {
  final detector = MarkdownElementDetector();

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final text = value;
    final spans = text.text.split('\n').map((line) {
      final TextStyle baseStyle;
      switch (detector.detectLineType(line)) {
        case MarkdownLineType.h1:
          baseStyle = Theme.of(context).textTheme.headline1!;
          break;
        case MarkdownLineType.h2:
          baseStyle = Theme.of(context).textTheme.headline2!;
          break;
        case MarkdownLineType.h3:
          baseStyle = Theme.of(context).textTheme.headline3!;
          break;
        case MarkdownLineType.h4:
          baseStyle = Theme.of(context).textTheme.headline4!;
          break;
        case MarkdownLineType.h5:
          baseStyle = Theme.of(context).textTheme.headline5!;
          break;
        case MarkdownLineType.h6:
          baseStyle = Theme.of(context).textTheme.headline6!;
          break;
        case MarkdownLineType.blockquote:
        case MarkdownLineType.plain:
          baseStyle = Theme.of(context).textTheme.bodyText2!;
      }

      final elements = detector.detect(line);
      if (elements.isEmpty) {
        return TextSpan(text: line, style: baseStyle);
      }

      final elementSpans = <TextSpan>[];
      var endIndex = 0;
      for (final element in elements..sortBy<num>((e) => e.startIndex)) {
        if (element.startIndex > endIndex) {
          elementSpans.add(
            TextSpan(text: line.substring(endIndex, element.startIndex)),
          );
        }

        final String text =
            line.substring(element.startIndex, element.endIndex);
        final span = element.type.when(
          image: (url) => TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: SizedBox.square(
                      dimension: 36,
                      child: Image(
                        image: NetworkImage(url),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              TextSpan(text: text),
            ],
          ),
          link: (url) => TextSpan(
            text: text,
            style: baseStyle.copyWith(decoration: TextDecoration.underline),
          ),
          bold: () => TextSpan(
            text: text,
            style: baseStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          italic: () => TextSpan(
            text: text,
            style: baseStyle.copyWith(fontStyle: FontStyle.italic),
          ),
          strikethrough: () => TextSpan(
            text: text,
            style: baseStyle.copyWith(decoration: TextDecoration.lineThrough),
          ),
        );
        elementSpans.add(span);
        endIndex = element.endIndex;
      }
      if (line.length > endIndex) {
        elementSpans.add(TextSpan(text: line.substring(endIndex)));
      }

      elementSpans.add(const TextSpan(text: '\n'));
      return TextSpan(children: elementSpans, style: baseStyle);
    }).toList(growable: false);
    return TextSpan(children: spans);
  }
}

@visibleForTesting
class MarkdownElementDetector {
  final _lineMatchers = {
    MarkdownLineType.h1: [RegExp(r'^#\s+')],
    MarkdownLineType.h2: [RegExp(r'^##\s+')],
    MarkdownLineType.h3: [RegExp(r'^###\s+')],
    MarkdownLineType.h4: [RegExp(r'^####\s+')],
    MarkdownLineType.h5: [RegExp(r'^#####\s+')],
    MarkdownLineType.h6: [RegExp(r'^######\s+')],
    MarkdownLineType.blockquote: [RegExp(r'^>\s+')],
  };

  final _matchers = {
    _MarkdownElementType.image: [RegExp(r'!\[\w+\]\((.+)\)')],
    _MarkdownElementType.link: [RegExp(r'(?<!!)\[\w+\]\((.+)\)')],
    _MarkdownElementType.bold: [RegExp(r'\*\*\w+\*\*')],
    _MarkdownElementType.italic: [RegExp(r'(?<!\*)\*\w+\*(?!\*)')],
    _MarkdownElementType.strikethrough: [RegExp(r'~~\w+~~')],
  };

  MarkdownLineType detectLineType(String line) {
    return _lineMatchers.entries
            .where((e) => e.value.any((e) => e.hasMatch(line)))
            .firstOrNull
            ?.key ??
        MarkdownLineType.plain;
  }

  List<MarkdownElement> detect(String line) {
    return _matchers.entries
        .map(
          (entry) => entry.value.map((e) => e.allMatches(line)).flattened.map(
            (e) {
              final MarkdownElementType type;
              switch (entry.key) {
                case _MarkdownElementType.image:
                  type = MarkdownElementType.image(url: e.group(1) ?? '');
                  break;
                case _MarkdownElementType.link:
                  type = MarkdownElementType.link(url: e.group(1) ?? '');
                  break;
                case _MarkdownElementType.bold:
                  type = const MarkdownElementType.bold();
                  break;
                case _MarkdownElementType.italic:
                  type = const MarkdownElementType.italic();
                  break;
                case _MarkdownElementType.strikethrough:
                  type = const MarkdownElementType.strikethrough();
                  break;
              }
              return MarkdownElement(
                type: type,
                startIndex: e.start,
                endIndex: e.end,
              );
            },
          ),
        )
        .flattened
        .toList(growable: false);
  }
}

@visibleForTesting
class MarkdownElement {
  MarkdownElement({
    required this.type,
    required this.startIndex,
    required this.endIndex,
  });

  final MarkdownElementType type;
  final int startIndex;
  final int endIndex;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MarkdownElement &&
            other.type == type &&
            other.startIndex == startIndex &&
            other.endIndex == endIndex);
  }

  @override
  int get hashCode => hashValues(type, startIndex, endIndex);
}

@visibleForTesting
enum MarkdownLineType {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  blockquote,
  plain,
}

enum _MarkdownElementType {
  image,
  link,
  bold,
  italic,
  strikethrough,
}

@freezed
@visibleForTesting
class MarkdownElementType with _$MarkdownElementType {
  const factory MarkdownElementType.image({required String url}) =
      _MarkdownElementImage;

  const factory MarkdownElementType.link({required String url}) =
      _MarkdownElementLink;

  const factory MarkdownElementType.bold() = _MarkdownElementBold;

  const factory MarkdownElementType.italic() = _MarkdownElementItalic;

  const factory MarkdownElementType.strikethrough() =
      _MarkdownElementStrikethrough;
}
