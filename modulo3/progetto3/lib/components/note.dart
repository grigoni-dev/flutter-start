import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  final String note;
  final void Function() onDoubleTap;

  Note({required this.note, required this.onDoubleTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 2, spreadRadius: 2, color: Colors.grey.shade200),
          ],
        ),
        child: Text(
          note,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
