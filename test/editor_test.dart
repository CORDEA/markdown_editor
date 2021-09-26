import 'package:flutter_test/flutter_test.dart';
import 'package:markdown_editor/editor.dart';

void main() {
  late MarkdownElementDetector detector;

  setUp(() {
    detector = MarkdownElementDetector();
  });

  group('detectHeading', () {
    final tests = [
      ['# test', MarkdownHeadingType.h1],
      ['## test', MarkdownHeadingType.h2],
      ['### test', MarkdownHeadingType.h3],
      ['#### test', MarkdownHeadingType.h4],
      ['##### test', MarkdownHeadingType.h5],
      ['###### test', MarkdownHeadingType.h6],
      ['test', MarkdownHeadingType.plain],
    ];

    for (final t in tests) {
      test('test ${t[0]}', () {
        // given

        // when
        final r = detector.detectHeading(t[0] as String);

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
