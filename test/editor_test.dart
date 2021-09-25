import 'package:flutter_test/flutter_test.dart';
import 'package:markdown_editor/editor.dart';

void main() {
  group('detect', () {
    late MarkdownElementDetector detector;

    setUp(() {
      detector = MarkdownElementDetector();
    });

    final tests = [
      ['# test', MarkdownElement.h1],
      ['## test', MarkdownElement.h2],
      ['### test', MarkdownElement.h3],
      ['#### test', MarkdownElement.h4],
      ['##### test', MarkdownElement.h5],
      ['###### test', MarkdownElement.h6],
      ['test', MarkdownElement.plain],
    ];

    for (final t in tests) {
      test('test ${t[0]}', () {
        // given

        // when
        final r = detector.detect(t[0] as String);

        // then
        expect(r, t[1]);
      });
    }
  });
}
