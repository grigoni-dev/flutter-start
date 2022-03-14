import 'package:flutter/material.dart';

class TextHeadline extends StatelessWidget {
  final String _text;
  TextHeadline(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
