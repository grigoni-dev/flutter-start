import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'page/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
