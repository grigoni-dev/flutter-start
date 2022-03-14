import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  @override
  State<DialogPage> createState() => _FabPageState();
}

class _FabPageState extends State<DialogPage> {
  final emailController = TextEditingController();
  final textMultilineController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dialog Page"),
        ),
        body: Center(child: Text("Body")),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.attach_email),
            onPressed: () => showEmailDialog()));
  }

  showDialogError() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Attenzione"),
        content: Text("L'indirizzo inserito non e' valido!"),
        actions: [
          TextButton(
              onPressed: () => {Navigator.pop(context)}, child: Text("Chiudi"))
        ],
      ),
    );
  }

  showSimpleDialog() {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text("Attenzione"),
        children: [
          SimpleDialogOption(
            onPressed: () => {},
            child: Text("Prima opzione"),
          ),
          SimpleDialogOption(
            onPressed: () => {},
            child: Text("Seconda opzione"),
          ),
        ],
      ),
    );
  }

  void showEmailDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.white,
        child: Container(
          width: double.minPositive,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Indirizzo Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Divider(),
              TextField(
                style: TextStyle(),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "esempio@dominio.it",
                ),
                textInputAction: TextInputAction.done,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue.shade400),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    onPressed: () => {
                          if (emailController.text.isEmpty ||
                              !emailController.text.contains("@"))
                            {showDialogError()}
                          else
                            {emailController.clear(), Navigator.pop(context)},
                        },
                    child: Text("Conferma")),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showMultilineTextDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.white,
        child: Container(
          width: double.minPositive,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Form Multiline",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Divider(),
              TextField(
                style: TextStyle(),
                keyboardType: TextInputType.multiline,
                minLines: 2,
                maxLines: 5,
                controller: textMultilineController,
                decoration: InputDecoration(
                  hintText: "Scrivi",
                ),
                textInputAction: TextInputAction.done,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.red.shade400),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () => {Navigator.pop(context)},
                      child: Text("Annulla")),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue.shade400),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () => {},
                      child: Text("Conferma"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
