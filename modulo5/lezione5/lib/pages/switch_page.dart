import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool switchBodyChoise = false;
  bool switchMenuChoise = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        actions: [
          Switch(
            activeColor: Colors.blue.shade900,
            value: switchMenuChoise,
            onChanged: (value) => {
              setState(
                () {
                  switchMenuChoise = value;
                  print(value);
                },
              )
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              child: Icon(Icons.save),
            ),
          ),
        ],
      ),
      body: Center(
        child: body(),
      ),
    );
  }

  Widget body() => SwitchListTile(
        title: Text("Attivazione elemento"),
        value: switchBodyChoise,
        onChanged: (value) => {
          setState(
            () {
              switchBodyChoise = value;
              print(value);
            },
          )
        },
      );
}
