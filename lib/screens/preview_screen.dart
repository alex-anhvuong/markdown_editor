import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PreviewScreen extends StatelessWidget {
  final String inputText;

  PreviewScreen({this.inputText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      height: double.infinity,
      child: Markdown(
        data: inputText,
        styleSheet: MarkdownStyleSheet.fromTheme(
          Theme.of(context),
        ),
      ),
      // child: Text(
      //   inputText,
      //   style: GoogleFonts.ptMono(textStyle: kDisplayedResultText),
      // ),
    );
  }
}
