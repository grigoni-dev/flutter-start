import 'package:flutter/material.dart';
import 'package:lezione6/pages/dialog_page.dart';
import 'package:lezione6/pages/drawer_page.dart';
import 'package:lezione6/pages/floating_action_button_page.dart';
import 'package:lezione6/pages/tab_bar_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Scopri le funzionalita di questo modulo",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 50)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.shade700),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)))),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TabBarPage(),
                  ),
                ),
              },
              child: Text("Tab Bar Page"),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 50)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.shade700),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)))),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrawerPage(),
                  ),
                ),
              },
              child: Text("Drawer Page"),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 50)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.shade700),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)))),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FabPage(),
                  ),
                ),
              },
              child: Text("Fab Page"),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 50)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.shade700),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)))),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DialogPage(),
                  ),
                ),
              },
              child: Text("Dialog Page"),
            ),
          ],
        ),
      ),
    );
  }
}
