import 'package:flutter/material.dart';
import 'package:progetto1/components/text_headline.dart';

class IconsPage extends StatefulWidget {
  @override
  _IconsPageState createState() => _IconsPageState();
}

class _IconsPageState extends State<IconsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextHeadline("Icons Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              firstIcon(),
              secondIcon(),
              thirdIcon(),
            ],
          ),
        ),
      ),
    );
  }

  Widget firstIcon() => Icon(
        Icons.delete_forever_outlined,
        size: 80,
        color: Colors.teal.shade200,
      );
  Widget secondIcon() => Icon(
        Icons.delete_forever_sharp,
        size: 80,
        color: Colors.teal.shade600,
      );
  Widget thirdIcon() => Icon(
        Icons.delete_forever_rounded,
        size: 80,
        color: Colors.teal.shade900,
      );
}
