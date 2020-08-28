import 'package:flutter/material.dart';

class EditorScreen extends StatelessWidget {
  final Function updateData;

  EditorScreen({this.updateData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Markdown input',
        ),
        maxLines: null,
        onChanged: (value) => updateData(value),
      ),
    );
  }
}
