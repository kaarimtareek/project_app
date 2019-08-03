import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/enums/enums.dart';
import 'package:project_app/src/core/models/story.dart';
import 'package:project_app/src/core/stores/comments_store.dart';
import 'package:project_app/src/ui/widgets/comments_list_builder.dart';

class DetailsPage extends StatefulWidget {
  final StoryModel story;

  DetailsPage({Key key, this.story}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final CommentsStore store = locator.get<CommentsStore>();
  @override
  void initState() {
    super.initState();
    store.fetchComments(widget.story.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.story.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: <Widget>[
            Text(
              widget.story.body,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Comments',
              style:
                  TextStyle(fontSize: 24, decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 30,
            ),
            Observer(builder: (context) {
              switch (store.state) {
                case CommentsState.loading:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                  break;
                case CommentsState.error:
                  return InkWell(
                    child: Center(
                      child: Text('Error Occured, Tab To retry'),
                    ),
                    onTap: () {
                      store.fetchComments(widget.story.id);
                    },
                  );
                  break;

                case CommentsState.idle:
                  return CommentsList(
                    comments: store.comments,
                  );
              }
            })
          ]),
        ));
  }
}
