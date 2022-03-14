import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List View Page"),
      ),
      body: SafeArea(
        child: listView(),
      ),
    );
  }

  Widget listView() => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            100,
            (index) => Padding(
              padding: EdgeInsets.all(8.0),
              child: listElement("#${index++} elemento"),
            ),
          ),
        ),
      );

  Widget listElement(String text) =>
      GestureDetector(onTap: () => {print("Clicked $text")}, child: Text(text));
}
