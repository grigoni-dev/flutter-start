import 'package:flutter/material.dart';
import 'package:progetto5/components/body_form_component.dart';
import 'package:progetto5/components/header_form_component.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          HeaderFormComponent(),
          BodyFormComponent(),
        ],
      ),
    );
  }
}
