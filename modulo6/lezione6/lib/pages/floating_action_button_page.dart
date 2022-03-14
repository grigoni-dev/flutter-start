import 'package:flutter/material.dart';

class FabPage extends StatefulWidget {
  @override
  State<FabPage> createState() => _FabPageState();
}

class _FabPageState extends State<FabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fab Page"),
      ),
      body: Center(
        child: FloatingActionButton.extended(
          icon: Icon(Icons.delete),
          label: Text("Elimina"),
          backgroundColor: Colors.blue.shade700,
          foregroundColor: Colors.white,
          splashColor: Colors.blue.shade900,
          onPressed: () => {},
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text("Email"),
        backgroundColor: Colors.blue.shade200,
        foregroundColor: Colors.blue.shade900,
        splashColor: Colors.blue.shade900,
        onPressed: () => {},
      ),
    );
  }
}
