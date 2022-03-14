import 'package:flutter/material.dart';
import 'package:progetto5/pages/main_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Progetto 5 - App Bancaria",
      home: MainPage(),
      theme: ThemeData.light(),
    );
  }
}
