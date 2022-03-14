import 'package:flutter/material.dart';
import 'package:lezione7/models/story_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ParsingJsonPage extends StatefulWidget {
  @override
  State<ParsingJsonPage> createState() => _ParsingJsonPageState();
}

class _ParsingJsonPageState extends State<ParsingJsonPage> {
  late Future<List<StoryModel>> storyModelFuture;
  bool isLoading = false;

  List<int> storiesId = [];

  @override
  void initState() {
    super.initState();
    // getStoriesId();
    storyModelFuture = downloadStories();
  }

  Future<List<StoryModel>> downloadStories() async {
    final storiesHttpResponse = await http.get(Uri.parse(
        "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty"));
    final storiesId = json.decode(storiesHttpResponse.body) as List<dynamic>;
    final storiesFuture = storiesId.take(10).map((storyId) async {
      final response = await http.get(Uri.parse(
          "https://hacker-news.firebaseio.com/v0/item/$storyId.json?print=pretty"));
      return StoryModel.fromJson(response.body);
    }).toList();

    final stories = await Future.wait(storiesFuture);
    return stories;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parsing Json Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: body(),
        ),
      ),
    );
  }

  body() => FutureBuilder<List<StoryModel>>(
        future: storyModelFuture,
        builder: (context, snapshot) =>
            snapshot.connectionState != ConnectionState.done
                ? CircularProgressIndicator()
                : ListView.separated(
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) =>
                        storyRow(index, snapshot.data![index]),
                  ),
      );

  Widget storyRow(int index, StoryModel elem) => ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$index",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        title: Text(
          elem.title,
          style: TextStyle(fontSize: 16),
        ),
        subtitle: Text(
          elem.content,
          style: TextStyle(fontSize: 14),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${elem.score}",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
}
