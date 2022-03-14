import 'package:flutter/material.dart';

class SplashPageModel {
  final String title;
  final String description;
  final Color backgroundColor;

  SplashPageModel({
    required this.title,
    required this.description,
    required this.backgroundColor,
  });

  static final splashPages = [
    SplashPageModel(
        title: "Benvenuto in PNL",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua.",
        backgroundColor: Colors.blueGrey.shade500),
    SplashPageModel(
        title: "Bighellonaggio estremo",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua.",
        backgroundColor: Colors.blueGrey.shade600),
    SplashPageModel(
        title: "Festini abusivi",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua.",
        backgroundColor: Colors.blueGrey.shade700),
    SplashPageModel(
        title: "Costruzione di cose",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua.",
        backgroundColor: Colors.blueGrey.shade800),
    SplashPageModel(
        title: "Goditi la nostra app",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua.",
        backgroundColor: Colors.blueGrey.shade900),
  ];
}
