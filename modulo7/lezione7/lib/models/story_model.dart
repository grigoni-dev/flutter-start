import 'dart:convert';

class StoryModel {
  int index;
  String author;
  String title;
  String content;
  int score;

  StoryModel({
    required this.index,
    required this.author,
    required this.title,
    required this.content,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return {
      'by': author,
      'title': title,
      'text': content,
      'score': score,
    };
  }

  String toJson() => json.encode(toMap());

  factory StoryModel.fromMap(Map<String, dynamic> map) => StoryModel(
        index: 1,
        author: map['by'] ?? '',
        title: map['title'] ?? '',
        content: map['text'] ?? '',
        score: map['score']?.toInt() ?? 0,
      );

  factory StoryModel.fromJson(String source) =>
      StoryModel.fromMap(json.decode(source));
}
