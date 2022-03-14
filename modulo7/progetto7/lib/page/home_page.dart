import 'package:flutter/material.dart';
import 'package:progetto7/component/coin_list_tile.dart';
import 'package:progetto7/model/coin_model.dart';
import 'package:progetto7/repository/coin_listing_repository.dart';
import 'package:progetto7/theme/colors.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<CoinModel>> cryptoListingsFuture;

  @override
  void initState() {
    super.initState();
    cryptoListingsFuture = CoinListingRepository.all();
  }

  void refreshCoinList() {
    setState(() {
      cryptoListingsFuture = CoinListingRepository.all();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.colorPrimaryDark,
      appBar: appBar(),
      body: body(),
    );
  }

  AppBar appBar() => AppBar(
        leading: IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () => {
            refreshCoinList(),
            print("Refresh pressed"),
          },
        ),
        backgroundColor: ThemeColors.colorPrimary,
        centerTitle: true,
        title: Text(
          "BINANCE",
          style: TextStyle(color: ThemeColors.colorAccent, letterSpacing: 5),
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
              radius: 15,
            ),
            onPressed: () => {print("User pressed")},
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Balance",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$ 14,000.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget body() => Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: ThemeColors.colorPrimary,
        ),
        child: Column(
          children: [
            bodyHeader(),
            Divider(),
            futureBodyContent(),
          ],
        ),
      );

  Widget bodyHeader() => ListTile(
        title: Text(
          "Crypto List",
          style: TextStyle(
              color: ThemeColors.colorAccent,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Based on top 100",
          style: TextStyle(color: Colors.white54, fontSize: 14),
        ),
        trailing: GestureDetector(
          child: Text(
            "Show all",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          onTap: () => print("Click on Show all"),
        ),
      );

  Widget futureBodyContent() => Expanded(
        child: FutureBuilder(
            future: cryptoListingsFuture,
            builder: (context, snapshot) =>
                snapshot.connectionState != ConnectionState.done
                    ? Center(child: CircularProgressIndicator())
                    : bodyContent(snapshot.data as List<CoinModel>)),
      );

  Widget bodyContent(List<CoinModel> data) => ListView.separated(
        itemCount: data.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) => CoinListTile(
            symbol: data[index].symbol,
            name: data[index].name,
            price: data[index].price,
            variation24Hours: data[index].variation24Hours),
      );
}
