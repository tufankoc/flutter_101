import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final String title = "Create your first note";
  final String subtitle =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';
  final String createnote = 'Create a note.';
  final String importnote = 'Import Notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            Image.asset(ImageItems().appleWitgBooks),
            _titleWidget(title: title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _subtitleWidget(subtitle: subtitle),
            ),
            Spacer(),
            ElevatedButton(
                onPressed: (() {}),
                child: SizedBox(
                    height: 50,
                    child: Center(
                        child: Text(
                      createnote,
                      style: Theme.of(context).textTheme.headline5,
                    )))),
            TextButton(onPressed: (() {}), child: Text(importnote)),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class _subtitleWidget extends StatelessWidget {
  const _subtitleWidget({Key? key, required this.subtitle}) : super(key: key);

  final subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle * 3,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _titleWidget extends StatelessWidget {
  const _titleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItems {
  static final EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}
