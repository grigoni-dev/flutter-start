import 'package:flutter/material.dart';

class CharacterStatEditor extends StatefulWidget {
  final String label;
  final int initValue;

  CharacterStatEditor({required this.label, required this.initValue});

  @override
  _CharacterStatEditorState createState() => _CharacterStatEditorState();
}

class _CharacterStatEditorState extends State<CharacterStatEditor> {
  late int value;
  @override
  void initState() {
    value = widget.initValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        value.toString(),
        style: TextStyle(
            color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      title: Text(widget.label),
      trailing: ElevatedButton(
        onPressed: () {
          setState(() {
            value++;
          });
        },
        child: Icon(
          Icons.add,
          size: 16,
        ),
      ),
    );
  }
}
