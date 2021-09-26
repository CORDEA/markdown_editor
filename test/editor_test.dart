import 'package:flutter_test/flutter_test.dart';
import 'package:markdown_editor/editor.dart';

void main() {
  late MarkdownElementDetector detector;

  setUp(() {
    detector = MarkdownElementDetector();
  });

  group('detectLineType', () {
    final tests = [
      ['# test', MarkdownLineType.h1],
      ['## test', MarkdownLineType.h2],
      ['### test', MarkdownLineType.h3],
      ['#### test', MarkdownLineType.h4],
      ['##### test', MarkdownLineType.h5],
      ['###### test', MarkdownLineType.h6],
      ['> test', MarkdownLineType.blockquote],
      ['test', MarkdownLineType.plain],
    ];

    for (final t in tests) {
      test('test ${t[0]}', () {
        // given

        // when
        final r = detector.detectLineType(t[0] as String);

        // then
        expect(r, t[1]);
      });
    }
  });

  group('detect', () {
    final tests = [
      [
        '![test](test)',
        [
          MarkdownElement(
            type: MarkdownElementType.image,
            startIndex: 0,
            endIndex: 12,
          ),
        ],
      ],
      [
        '[test](test)',
        [
          MarkdownElement(
            type: MarkdownElementType.link,
            startIndex: 0,
            endIndex: 11,
          ),
        ],
      ],
      [
        '**test**',
        [
          MarkdownElement(
            type: MarkdownElementType.bold,
            startIndex: 0,
            endIndex: 7,
          ),
        ],
      ],
      [
        '*test*',
        [
          MarkdownElement(
            type: MarkdownElementType.italic,
            startIndex: 0,
            endIndex: 5,
          ),
        ],
      ],
      [
        '~~test~~',
        [
          MarkdownElement(
            type: MarkdownElementType.strikethrough,
            startIndex: 0,
            endIndex: 7,
          ),
        ],
      ],
      ['test', []],
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
