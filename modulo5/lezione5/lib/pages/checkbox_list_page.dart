import 'package:flutter/material.dart';

class CheckBoxListPage extends StatefulWidget {
  @override
  _CheckBoxListPageState createState() => _CheckBoxListPageState();
}

class _CheckBoxListPageState extends State<CheckBoxListPage> {
  bool checkBox = false;

  final list = [
    Item(text: "Giovanni", checkbox: true),
    Item(text: "Alberto", checkbox: false),
    Item(text: "Marco", checkbox: false),
    Item(text: "Giorgio", checkbox: true),
    Item(text: "Gianluca", checkbox: true),
    Item(text: "Matteo", checkbox: true),
    Item(text: "Facio", checkbox: false),
    Item(text: "Raffaele", checkbox: true),
    Item(text: "Giacomo", checkbox: false),
    Item(text: "Luigi", checkbox: true),
    Item(text: "Alessandro", checkbox: false),
    Item(text: "Mattia", checkbox: true),
    Item(text: "federico", checkbox: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: list.length,
          itemBuilder: (context, index) => checkboxRow(list[index]),
          separatorBuilder: (context, index) => Divider(),
        ),
      ),
    );
  }

  Widget checkboxRow(Item item) => CheckboxListTile(
        title: Text(item.text),
        value: item.checkbox,
        onChanged: (value) => {
          setState(
            () => {item.checkbox = value!},
          )
        },
      );
}

class Item {
  String text;
  bool checkbox;

  Item({required this.text, required this.checkbox});
}
