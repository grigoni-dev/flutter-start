import 'package:flutter/material.dart';
import 'package:progetto1/components/text_headline.dart';

class ImagesPage extends StatefulWidget {
  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextHeadline("Images Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              firstImage(),
              SizedBox(
                height: 20,
              ),
              secondImage(),
              SizedBox(
                height: 20,
              ),
              thirdImage()
            ],
          ),
        ),
      ),
    );
  }

  Widget firstImage() => SizedBox(
        width: 200,
        height: 200,
        child: Image(
          image: AssetImage("assets/images/notebook.jpg"),
          fit: BoxFit.cover,
        ),
      );

  Widget secondImage() => SizedBox(
        width: 200,
        height: 200,
        child: Image(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
          fit: BoxFit.cover,
        ),
      );

  Widget thirdImage() => CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
        radius: 50,
      );
}
