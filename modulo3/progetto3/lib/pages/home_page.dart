import 'package:flutter/material.dart';

import 'partials/home_page_body.dart';
import 'partials/home_page_sidebar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> notes = [];

  void insertNote() {
    final note = ([
      "Comprare il latte di soia altrimenti muoio",
      "Comprare mele golden e risparmiare i soldi sui vestiti usati",
      "Fare la spesa per il cane e comprare crocchette",
      "Comprare pane per i vicini",
    ]..shuffle())
        .first;

    setState(() {
      notes.add(note);
    });
  }

  void removeNote(String note) {
    setState(() => notes.remove(note));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            HomePageSidebar(insertNote: insertNote),
            Positioned(
              left: 60,
              right: 0,
              bottom: 0,
              top: 0,
              child: HomePageBody(notes: notes, removeNote: removeNote),
            ),
          ],
        ),
      ),
    );
  }
}
