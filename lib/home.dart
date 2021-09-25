import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:markdown_editor/editor.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          controller: MarkdownTextEditingController(),
        ),
      ),
    );
  }
}
