import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

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
        final TextSpan span;
        switch (element.type) {
          case MarkdownElementType.image:
            span = TextSpan(text: text);
            break;
          case MarkdownElementType.link:
            span = TextSpan(
              text: text,
              style: baseStyle.copyWith(decoration: TextDecoration.underline),
            );
            break;
          case MarkdownElementType.bold:
            span = TextSpan(
              text: text,
              style: baseStyle.copyWith(fontWeight: FontWeight.bold),
            );
            break;
          case MarkdownElementType.italic:
            span = TextSpan(
              text: text,
              style: baseStyle.copyWith(fontStyle: FontStyle.italic),
            );
            break;
          case MarkdownElementType.strikethrough:
            span = TextSpan(
              text: text,
              style: baseStyle.copyWith(decoration: TextDecoration.lineThrough),
            );
            break;
        }
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
    MarkdownElementType.image: [RegExp(r'!\[\w+\]\(\w+\)')],
    MarkdownElementType.link: [RegExp(r'(?<!!)\[\w+\]\(\w+\)')],
    MarkdownElementType.bold: [RegExp(r'\*\*\w+\*\*')],
    MarkdownElementType.italic: [RegExp(r'(?<!\*)\*\w+\*(?!\*)')],
    MarkdownElementType.strikethrough: [RegExp(r'~~\w+~~')],
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
                (e) => MarkdownElement(
                  type: entry.key,
                  startIndex: e.start,
                  endIndex: e.end,
                ),
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

@visibleForTesting
enum MarkdownElementType {
  image,
  link,
  bold,
  italic,
  strikethrough,
}
