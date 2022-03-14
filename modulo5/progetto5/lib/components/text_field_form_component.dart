import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextInputType keyboardType;
  final TextEditingController textController;

  TextFieldForm({
    required this.textController,
    required this.labelText,
    this.hintText,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(),
      keyboardType: keyboardType,
      cursorColor: Colors.pink,
      controller: textController,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.pink.shade200),
        hintText: hintText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.pink.shade200,
          ),
        ),
      ),
      textInputAction: TextInputAction.next,
      textAlign: TextAlign.start,
    );
  }
}
