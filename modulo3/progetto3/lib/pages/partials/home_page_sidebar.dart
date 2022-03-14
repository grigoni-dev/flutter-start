import 'package:flutter/material.dart';

class HomePageSidebar extends StatelessWidget {
  final void Function() insertNote;
  HomePageSidebar({required this.insertNote});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 100,
      height: double.infinity,
      color: Colors.grey.shade400,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
              radius: 20,
            ),
            IconButton(
              onPressed: insertNote,
              iconSize: 30,
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
