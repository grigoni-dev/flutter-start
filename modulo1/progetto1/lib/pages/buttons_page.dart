import 'package:flutter/material.dart';
import 'package:progetto1/components/text_headline.dart';

class ButtonsPage extends StatefulWidget {
  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextHeadline("Button Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: firstButton(),
          ),
          Center(
            child: secondButton(),
          ),
        ],
      ),
    );
  }

  Widget firstButton() => ElevatedButton(
        onPressed: () {
          print("On button pressed");
        },
        child: Text("Clicca qui"),
      );

  Widget secondButton() => IconButton(
        onPressed: () {
          print("On button pressed");
        },
        icon: Icon(Icons.ac_unit_outlined),
        color: Colors.red,
      );
}
