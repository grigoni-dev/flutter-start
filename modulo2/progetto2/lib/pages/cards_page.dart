import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Cards Page"),
        ),
        body: Column(
          children: [
            firstCard(),
            secondCard(),
          ],
        ));
  }

  Widget firstCard() => Card(
        child: InkWell(
          splashColor: Colors.blue,
          onTap: () {},
          onLongPress: () {},
          child: Container(
            width: double.infinity,
            height: 30,
            padding: EdgeInsets.all(8.0),
            child: Text("First Card"),
          ),
        ),
      );

  Widget secondCard() => Card(
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text("Giovanni Rigoni"),
          onTap: () {},
        ),
      );
}
