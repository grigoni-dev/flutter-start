import 'package:flutter/material.dart';
import 'package:progetto1/components/text_headline.dart';

class CounterPage extends StatefulWidget {
  final int _value;

  CounterPage(this._value);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  late int value;

  void increment() {
    counter++;
    print("increment clicked");
  }

  @override
  void initState() {
    value = widget._value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextHeadline("Counter Page $value"),
      ),
      body: Center(
        child: Text(
          "Persone in lista d'attesa: $counter",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          increment();
        }),
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
