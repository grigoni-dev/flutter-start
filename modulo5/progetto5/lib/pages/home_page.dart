import 'package:flutter/material.dart';
import 'package:progetto5/models/sex_model.dart';
import 'package:progetto5/models/user_model.dart';

class HomePage extends StatelessWidget {
  final User user;
  HomePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "UTENTE REGISTRATO CORRETTAMENTE!",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Name: ${user.name}"),
            Text("Surname: ${user.surname}"),
            Text("Email: ${user.email}"),
            Text("Phone: ${user.phone}"),
            Text("Sex: ${(user.sex == Sex.M) ? "Uomo" : "Donna"}"),
            Text("Ral: ${(user.ral! / 1000).round()}k"),
          ],
        ),
      ),
    );
  }
}
