import 'package:flutter/material.dart';
import 'package:progetto1/components/text_headline.dart';
import 'package:progetto1/pages/buttons_page.dart';
import 'package:progetto1/pages/colors_page.dart';
import 'package:progetto1/pages/counter_page.dart';
import 'package:progetto1/pages/gridview_page.dart';
import 'package:progetto1/pages/icons_page.dart';
import 'package:progetto1/pages/images_page.dart';
import 'package:progetto1/pages/listview_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextHeadline("Flutter Start"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CounterPage(5)),
                      );
                    }),
                child: Text("Vai a Counter Page")),
            ElevatedButton(
                onPressed: () => setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ButtonsPage()),
                      );
                    }),
                child: Text("Vai a Buttons Page")),
            ElevatedButton(
                onPressed: () => setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ColorsPage()),
                      );
                    }),
                child: Text("Vai a Colors Page")),
            ElevatedButton(
                onPressed: () => setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IconsPage()),
                      );
                    }),
                child: Text("Vai a Icons Page")),
            ElevatedButton(
                onPressed: () => setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ImagesPage()),
                      );
                    }),
                child: Text("Vai a Images Page")),
            ElevatedButton(
                onPressed: () => setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListViewPage()),
                      );
                    }),
                child: Text("Vai a ListView Page")),
            ElevatedButton(
                onPressed: () => setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GridViewPage()),
                      );
                    }),
                child: Text("Vai a GridView Page")),
          ],
        ),
      ),
    );
  }
}
