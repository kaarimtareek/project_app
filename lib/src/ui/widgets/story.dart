import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/models/story.dart';
import 'package:project_app/src/core/stores/favourties_store.dart';
import 'package:project_app/src/ui/routing/routes.dart';

class StoryBuilder extends StatelessWidget {
  final FavouritesStore _store = locator.get<FavouritesStore>();
  final StoryModel story;

  StoryBuilder({Key key, this.story}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RouteNames.detailsPage, arguments: story);
      },
      child: Observer(builder: (context) {
        return Card(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
              title: Text(story.title),
              subtitle: Text(
                story.body,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: IconButton(
                icon: _store.isFavourite(story.id)
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border),
                onPressed: () {
                  _store.isFavourite(story.id)
                      ? _store.removeFavourite(story)
                      : _store.addFavourite(story);
                },
              )),
        ));
      }),
    );
  }
}
