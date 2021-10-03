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
        child: Theme(
          data: ThemeData(
            textTheme: TextTheme(
              headline1:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 36),
              headline2:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 32),
              headline3:
                  Theme.of(context).textTheme.headline3!.copyWith(fontSize: 28),
              headline4:
                  Theme.of(context).textTheme.headline4!.copyWith(fontSize: 24),
              headline5:
                  Theme.of(context).textTheme.headline5!.copyWith(fontSize: 20),
              headline6:
                  Theme.of(context).textTheme.headline6!.copyWith(fontSize: 20),
              bodyText1:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
            ),
          ),
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
      ),
    );
  }
}
