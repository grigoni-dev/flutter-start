import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  @override
  _StackPageState createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Stack Page"),
        ),
        body: Center(
          child: firstStack(),
        ));
  }

  Widget firstStack() => Stack(
        children: [
          Icon(
            Icons.person,
            size: 80,
          ),
          Container(
              width: 30,
              height: 30,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(right: 48, bottom: 48),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ],
        alignment: Alignment.center,
      );
}
