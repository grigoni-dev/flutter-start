import 'package:flutter/material.dart';
import 'package:progetto1/components/text_headline.dart';

class ColorsPage extends StatefulWidget {
  @override
  _ColorsPageState createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextHeadline("Colors Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              firstColor(),
              secondColor(),
              thirdColor(),
              fourthColor(),
              fifthColor(),
            ],
          ),
        ),
      ),
    );
  }

  Widget firstColor() => Text(
        "First Color",
        style: TextStyle(color: Colors.blueGrey.shade600),
      );

  Widget secondColor() => Text(
        "Second Color",
        style: TextStyle(color: Colors.blueGrey[600]),
      );

  Widget thirdColor() => Text(
        "Third Color",
        style: TextStyle(color: Colors.blueGrey.shade600.withOpacity(0.5)),
      );
  Widget fourthColor() => Text(
        "Fourth Color",
        style: TextStyle(color: Color.fromRGBO(0, 0, 255, 1)),
      );
  Widget fifthColor() => Text(
        "Fifth Color",
        style: TextStyle(color: Color(0xFF5E35B1)),
      );
}
