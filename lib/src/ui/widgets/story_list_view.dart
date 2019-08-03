import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:project_app/src/core/models/story.dart';
import 'package:project_app/src/ui/widgets/story.dart';

class StoriesList extends StatelessWidget {
  final List<StoryModel> stories;

  const StoriesList({Key key, this.stories}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // print('${stories.toString()} ${stories.length}');
    return Observer(builder: (
      context,
    ) {
      switch (stories.length) {
        case 0:
          return Center(
            child: Text('No Favourite Posts , add Some'),
          );

          break;
        default:
          return ListView.builder(
            itemCount: stories.length,
            itemBuilder: (BuildContext context, int index) {
              return StoryBuilder(
                story: stories[index],
              );
            },
          );
          break;
      }
    });
  }
}
