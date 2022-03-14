import 'package:flutter/material.dart';
import 'package:progetto6/pages/profile_page.dart';
import 'package:progetto6/pages/shop_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("NFT SHOP"),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ShopPage(),
            ProfilePage(),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => {},
          backgroundColor: Colors.black,
          icon: Icon(Icons.euro),
          label: Text("Vendi NFT"),
        ),
      ),
    );
  }
}
