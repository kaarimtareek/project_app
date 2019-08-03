import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/stores/favourties_store.dart';
import 'package:project_app/src/ui/widgets/story_list_view.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  FavouritesStore _store = locator.get<FavouritesStore>();

  @override
  void initState() {
    super.initState();
    // _store.loadFavourites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Observer(
          builder: (context) {
            return _store.loadFavouritesFuture.status == FutureStatus.pending
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : StoriesList(stories: _store.favourites);
          },
        ),
      ),
    );
  }
}
