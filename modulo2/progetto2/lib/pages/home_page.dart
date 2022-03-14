import 'package:flutter/material.dart';
import 'package:progetto2/components/charecter_stat_editor_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Character Editor"),
        ),
        body: Column(
          children: [
            CharacterStatEditor(
              label: "Forza",
              initValue: 3,
            ),
            CharacterStatEditor(
              label: "Resistenza",
              initValue: 9,
            ),
            CharacterStatEditor(
              label: "Velocita'",
              initValue: 5,
            ),
          ],
        ));
  }
}
