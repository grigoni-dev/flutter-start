import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget {
  final String title;
  final Widget child;

  FormComponent({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.pink.shade400,
            ),
          ),
          SizedBox(height: 5),
          child,
        ],
      ),
    );
  }
}
