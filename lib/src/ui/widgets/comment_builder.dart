import 'package:flutter/material.dart';
import 'package:project_app/src/core/models/comment.dart';

class CommentBuilder extends StatelessWidget {
  final CommentModel comment;

  const CommentBuilder({Key key, this.comment}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30),
      child: ListTile(
        title: Text(
          comment.name,
          style: TextStyle(fontSize: 24),
        ),
        subtitle: Text(comment.body),
      ),
    );
  }
}
