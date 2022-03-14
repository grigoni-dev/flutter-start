import 'package:flutter/material.dart';
import 'package:lezione7/pages/home_page.dart';
import 'package:lezione7/pages/parsing_json_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ParsingJsonPage(),
    );
  }
}
