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
    final spans = text.text.split('\n').map((e) {
      final line = '$e\n';
      switch (detector.detectLineType(e)) {
        case MarkdownLineType.h1:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline1,
          );
        case MarkdownLineType.h2:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline2,
          );
        case MarkdownLineType.h3:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline3,
          );
        case MarkdownLineType.h4:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline4,
          );
        case MarkdownLineType.h5:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline5,
          );
        case MarkdownLineType.h6:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline6,
          );
        case MarkdownLineType.blockquote:
        case MarkdownLineType.plain:
          return TextSpan(text: line);
      }
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
                  endIndex: e.end - 1,
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
