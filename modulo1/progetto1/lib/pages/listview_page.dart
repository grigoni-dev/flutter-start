import 'package:flutter/material.dart';
import 'package:progetto1/components/day_model.dart';
import 'package:progetto1/components/text_headline.dart';

class ListViewPage extends StatelessWidget {
  final days = DayModel.days;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TextHeadline("ListView Page"),
        ),
        body: Center(
          child: thirdBody(),
        ));
  }

  Widget firstBody() => ListView(
        children: List.generate(
          days.length,
          (index) => DayOfTheMonth(model: days[index]),
        ),
      );

  Widget secondBody() => ListView.builder(
        itemCount: days.length,
        itemBuilder: (context, index) => DayOfTheMonth(model: days[index]),
      );

  Widget thirdBody() => ListView.separated(
        itemCount: days.length,
        itemBuilder: (context, index) => DayOfTheMonth(model: days[index]),
        separatorBuilder: (context, index) => Divider(),
        // separatorBuilder: (context, index) => Container(
        //   color: Colors.grey.shade400,
        //   height: 1,
        //   width: double.infinity,
        // ),
      );
}

class DayOfTheMonth extends StatelessWidget {
  final DayModel model;
  DayOfTheMonth({required this.model});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.number.toString(),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      title: Text(
        model.day,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
      ),
      subtitle: Text(
        model.month,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
      ),
      trailing: Text("trailing"),
    );
  }
}
