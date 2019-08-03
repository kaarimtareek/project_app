// To parse this JSON data, do
//
//     final commentModel = commentModelFromJson(jsonString);

import 'dart:convert';

List<CommentModel> commentModelFromJson(String str) =>
    new List<CommentModel>.from(
        json.decode(str).map((x) => CommentModel.fromJson(x)));

String commentModelToJson(List<CommentModel> data) =>
    json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class CommentModel {
  int postId;
  int id;
  String name;
  String email;
  String body;

  CommentModel({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) => new CommentModel(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
      };
}
