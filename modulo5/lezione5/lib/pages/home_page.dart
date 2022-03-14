import 'package:flutter/material.dart';
import 'package:lezione5/pages/checkbox_list_page.dart';
import 'package:lezione5/pages/slider_page.dart';
import 'package:lezione5/pages/switch_page.dart';

import 'radio_page.dart';

class HomePage extends StatelessWidget {
  final String email;
  HomePage({required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Benvenuto $email",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueAccent),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                "Scopri le funzionalita di questo modulo",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckBoxListPage(),
                  ),
                ),
              },
              child: Text("CheckBox List Page"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RadioPage(),
                  ),
                ),
              },
              child: Text("Radio Page"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SwitchPage(),
                  ),
                ),
              },
              child: Text("Switch Page"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SliderPage(),
                  ),
                ),
              },
              child: Text("Slider Page"),
            )
          ],
        ),
      ),
    );
  }
}
