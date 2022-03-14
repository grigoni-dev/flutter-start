import 'package:flutter/material.dart';

import 'pages/main_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lezione 5",
      home: MainPage(),
      theme: ThemeData.light(),
    );
  }
}
