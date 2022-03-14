import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? responseBody;
  bool isLoading = false;
  late Future<http.Response> httpRequest;

  @override
  void initState() {
    super.initState();

    setState(() {
      String uri =
          "http://188.125.106.235:8081/opencube/rest/produzione/bindello?codice=22008567";
      final url = Uri.parse(uri);
      httpRequest = http.get(url);
    });
    // request 2

    // startMakingRequest1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Call Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: body2(),
        ),
      ),
    );
  }

  body2() => FutureBuilder<http.Response>(
        future: httpRequest,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else {
            return SingleChildScrollView(
              child: Text(
                snapshot.data!.body,
                style: TextStyle(fontSize: 16),
              ),
            );
          }
        },
      );

  Widget body() => isLoading
      ? SizedBox(
          height: 50,
          width: 50,
          child: CircularProgressIndicator(),
        )
      : SingleChildScrollView(
          child: Text(
            responseBody ?? "Nessun risultato",
            style: TextStyle(fontSize: 16),
          ),
        );

  startMakingRequest1() async {
    setState(() {
      isLoading = true;
    });
    String uri =
        "http://188.125.106.235:8081/opencube/rest/produzione/bindello?codice=22008567";
    final url = Uri.parse(uri);
    final response = await http.get(url);

    setState(() {
      isLoading = false;
    });

    if (response.statusCode == 200) {
      setState(() {
        responseBody = response.body.replaceAll(",", ",\n");
      });
    } else {
      print("ERROR");
    }
  }

  startMakingRequest0() {
    String uri =
        "http://188.125.106.235:8081/opencube/rest/produzione/bindello?codice=22008567";
    final url = Uri.parse(uri);
    http.get(url).then((response) => {
          if (response.statusCode == 200)
            {
              setState(() {
                responseBody = response.body.replaceAll(",", ",\n");
              })
            }
          else
            {
              print("Error"),
            }
        });
  }
}
