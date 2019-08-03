import 'package:flutter/material.dart';
import 'package:project_app/src/core/models/comment.dart';
import 'package:project_app/src/ui/widgets/comment_builder.dart';

class CommentsList extends StatelessWidget {
  final List<CommentModel> comments;

  CommentsList({Key key, this.comments}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: comments.length,
      itemBuilder: (BuildContext context, int index) {
        return CommentBuilder(
          comment: comments[index],
        );
      },
    );
  }
}
