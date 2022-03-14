import 'package:flutter/material.dart';
import 'package:progetto3/components/note.dart';

class HomePageBody extends StatefulWidget {
  final List<String> notes;
  final void Function(String note) removeNote;
  HomePageBody({
    required this.notes,
    required this.removeNote,
  });

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Todo List",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: widget.notes
                    .map((elem) => Note(
                        note: elem.toString(),
                        onDoubleTap: () => widget.removeNote(elem)))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
