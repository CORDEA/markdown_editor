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
      switch (detector.detect(e)) {
        case MarkdownElement.h1:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline1,
          );
        case MarkdownElement.h2:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline2,
          );
        case MarkdownElement.h3:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline3,
          );
        case MarkdownElement.h4:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline4,
          );
        case MarkdownElement.h5:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline5,
          );
        case MarkdownElement.h6:
          return TextSpan(
            text: line,
            style: Theme.of(context).textTheme.headline6,
          );
        case MarkdownElement.plain:
          return TextSpan(text: line);
      }
    }).toList(growable: false);
    return TextSpan(children: spans);
  }
}

@visibleForTesting
class MarkdownElementDetector {
  final matchers = {
    MarkdownElement.h1: [RegExp(r'^#\s+')],
    MarkdownElement.h2: [RegExp(r'^##\s+')],
    MarkdownElement.h3: [RegExp(r'^###\s+')],
    MarkdownElement.h4: [RegExp(r'^####\s+')],
    MarkdownElement.h5: [RegExp(r'^#####\s+')],
    MarkdownElement.h6: [RegExp(r'^######\s+')],
  };

  MarkdownElement detect(String line) {
    for (final matcher in matchers.entries) {
      if (matcher.value.any((e) => e.hasMatch(line))) {
        return matcher.key;
      }
    }
    return MarkdownElement.plain;
  }
}

@visibleForTesting
enum MarkdownElement {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  plain,
}
