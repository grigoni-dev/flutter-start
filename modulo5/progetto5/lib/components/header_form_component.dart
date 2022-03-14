import 'package:flutter/material.dart';

class HeaderFormComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://images.unsplash.com/photo-1586034679970-cb7b5fc4928a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover);
  }
}

/*
 return Image.network(
        "https://images.unsplash.com/photo-1580508174046-170816f65662?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover);
*/
