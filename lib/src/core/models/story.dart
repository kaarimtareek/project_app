// To parse this JSON data, do
//
//     final storyModel = storyModelFromJson(jsonString);

import 'dart:convert';

List<StoryModel> storyModelFromJson(String str) => new List<StoryModel>.from(
    json.decode(str).map((x) => StoryModel.fromJson(x)));

String storyModelToJson(List<StoryModel> data) =>
    json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class StoryModel {
  int userId;
  int id;
  String title;
  String body;
  String error;
  StoryModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });
  StoryModel.error(String error) : error = error;

  factory StoryModel.fromJson(Map<String, dynamic> json) => new StoryModel(
        userId: json["userId"] ?? 0,
        id: json["id"] ?? 0,
        title: json["title"] ?? 'null',
        body: json["body"] ?? 'null',
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
