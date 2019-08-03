import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/enums/enums.dart';
import 'package:project_app/src/core/stores/favourties_store.dart';
import 'package:project_app/src/core/stores/storyStore.dart';
import 'package:project_app/src/core/stores/userStore.dart';
import 'package:project_app/src/ui/widgets/story_list_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    storyStore.loadStories(user.user.id);
    super.initState();
  }

  // final ThemeStore store = locator.get<ThemeStore>();

  final UserStore user = locator.get<UserStore>();
  final FavouritesStore favouritesStore = locator.get<FavouritesStore>();
  final StoryStore storyStore = locator.get<StoryStore>();
  @override
  @mustCallSuper
  Widget build(BuildContext context) => Scaffold(body: Observer(builder: (
        context,
      ) {
        switch (storyStore.state) {
          case StoriesState.loading:
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case StoriesState.error:
            return InkWell(
              onTap: () {
                storyStore.retry(user.user.id);
              },
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Error Occured, Tab to try again',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Icon(
                      Icons.error,
                      size: 24,
                    )
                  ],
                ),
              ),
            );
            break;
          case StoriesState.idle:
          default:
            return StoriesList(
              stories: storyStore.stories,
            );
            break;
        }
      }));

  @override
  bool get wantKeepAlive => true;
}
