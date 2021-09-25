import 'package:flutter/material.dart';

class MarkdownTextEditingController extends TextEditingController {}

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
