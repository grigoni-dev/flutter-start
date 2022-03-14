import 'package:flutter/material.dart';
import 'package:lezione6/pages/home_page.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color colorPrimary = Colors.blue.shade700;
    // final Color colorPrimaryDark = Colors.blue.shade900;

    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Page"),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  color: colorPrimary,
                  image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(Colors.black38, BlendMode.darken),
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1548439935-5f5f0a4fb02e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80"))),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundImage: NetworkImage(
                          "https://scontent-mxp2-1.xx.fbcdn.net/v/t1.6435-9/61879439_2607051829306245_1128793464964644864_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=dwJhZQyviocAX-iHvHL&_nc_ht=scontent-mxp2-1.xx&oh=00_AT94rQCOJ0Tcj_Vw1SYli3mcz8PFImnxWzMrSl_vwQ_6ag&oe=6215CDEC"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Giovanni Rigoni",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "grigoni.dev@gmail.com",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ],
                ),
              )),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(color: colorPrimary),
            ),
            leading: Icon(
              Icons.home,
              color: colorPrimary,
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
            },
          ),
          ListTile(
            title: Text(
              "Contatti",
              style: TextStyle(color: colorPrimary),
            ),
            leading: Icon(
              Icons.contacts,
              color: colorPrimary,
            ),
            onTap: () => {},
          ),
          ListTile(
            title: Text(
              "Articoli",
              style: TextStyle(color: colorPrimary),
            ),
            leading: Icon(
              Icons.article,
              color: colorPrimary,
            ),
            onTap: () => {},
          ),
        ],
      )),
    );
  }
}
