import 'package:flutter/material.dart';

// class RadioPage extends StatefulWidget {
//   @override
//   _RadioPageState createState() => _RadioPageState();
// }

// class _RadioPageState extends State<RadioPage> {
//   CardVariant cvChosen = CardVariant.basic;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: body(),
//       ),
//     );
//   }

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  CardVariant cvChosen = CardVariant.basic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: body(),
      ),
    );
  }

  Widget body() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RadioListTile<CardVariant>(
            value: CardVariant.basic,
            groupValue: cvChosen,
            onChanged: (value) => setState(
              () {
                cvChosen = value!;
              },
            ),
            title: Text("Basic"),
          ),
          RadioListTile<CardVariant>(
            value: CardVariant.normal,
            groupValue: cvChosen,
            onChanged: (value) => setState(
              () {
                cvChosen = value!;
              },
            ),
            title: Text("Normal"),
          ),
          RadioListTile<CardVariant>(
            value: CardVariant.pro,
            groupValue: cvChosen,
            onChanged: (value) => setState(
              () {
                cvChosen = value!;
              },
            ),
            title: Text("Pro"),
          ),
        ],
      );

  // Widget body() => Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Row(
  //           children: [
  //             Radio<CardVariant>(
  //               value: CardVariant.basic,
  //               groupValue: cvChosen,
  //               onChanged: (value) => setState(
  //                 () {
  //                   cvChosen = value!;
  //                 },
  //               ),
  //             ),
  //             Text("Basic")
  //           ],
  //         ),
  //         Row(
  //           children: [
  //             Radio<CardVariant>(
  //               value: CardVariant.normal,
  //               groupValue: cvChosen,
  //               onChanged: (value) => setState(
  //                 () {
  //                   cvChosen = value!;
  //                 },
  //               ),
  //             ),
  //             Text("Normal")
  //           ],
  //         ),
  //         Row(
  //           children: [
  //             Radio<CardVariant>(
  //               value: CardVariant.pro,
  //               groupValue: cvChosen,
  //               onChanged: (value) => setState(
  //                 () {
  //                   cvChosen = value!;
  //                 },
  //               ),
  //             ),
  //             Text("Pro")
  //           ],
  //         ),
  //       ],
  //     );

}

enum CardVariant {
  basic,
  normal,
  pro,
}
