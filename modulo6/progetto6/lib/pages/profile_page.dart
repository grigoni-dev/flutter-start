import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        height: 400,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          // per smussare i bordi e dare una shadow
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5, // sfocatura ombra
              spreadRadius: 1, // estensione ombra
            )
          ],
        ),
        child: Stack(
          children: [
            cardBackground(),
            profileBackground(),
          ],
        ),
      ),
    );
  }

  Widget cardBackground() => ClipRRect(
        // è un contenitore rettangolare. Vedi anche ClipOval, ClipPath
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Image.network(
          "https://images.unsplash.com/photo-1618472609777-b038f1f04b8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1664&q=80",
          fit: BoxFit.cover,
          color: Colors.black12,
          colorBlendMode: BlendMode.darken,
          width: double.infinity,
          height: 200,
        ),
      );

  Widget profileBackground() => Positioned(
        top: 150,
        bottom: 0,
        left: 0,
        right: 0,
        child: Column(
          children: [
            profile(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Emily Brown",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Graphic Designer",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "NFT appasionate from 2019",
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      );

  Widget profile() => CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
        radius: 50,
      );
}
