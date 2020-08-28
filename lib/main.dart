import 'package:flutter/material.dart';
import 'package:markdown_editor/constants.dart';
import 'package:markdown_editor/screens/editor_screen.dart';
import 'package:markdown_editor/screens/preview_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: GoogleFonts.comicNeue(
            textStyle: kDisplayedResultText,
          ),
        ),
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3.0,
                  color: Colors.red,
                ),
              ),
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Editor',
                ),
                Tab(
                  text: 'Preview',
                )
              ],
            ),
            title: Text(
              'Markdown Editor',
              style: kBlackTextStyle,
            ),
            centerTitle: true,
          ),
          body: TabBarView(children: [
            EditorScreen(updateData: (value) {
              setState(() {
                this.data = value;
              });
            }),
            PreviewScreen(inputText: this.data),
          ]),
        ),
      ),
    );
  }
}
