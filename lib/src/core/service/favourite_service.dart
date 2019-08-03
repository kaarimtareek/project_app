import 'dart:convert';

import 'package:project_app/src/core/models/story.dart';
import 'package:project_app/src/core/service/preferences_service.dart';

import '../../../locator.dart';

class FavouriteSrvice {
  PreferencesService _service = locator.get<PreferencesService>();
  Future<List<StoryModel>> getFavourites() async {
    List<String> result = await _service.getFavouriteStories();
    print('${result.length} the favourites from favourite service');
    List<StoryModel> models = <StoryModel>[];
    if (result.isNotEmpty) {
      models = result.map((story) {
        print(story);
        return StoryModel.fromJson(jsonDecode(story));
      }).toList();
    }
    return models;
  }

  Future<bool> deleteFavourites() async {
    return _service.deleteFavourites();
  }

  Future<bool> setFavourites(List<StoryModel> models) async {
    List<String> value = models.map((model) {
      return json.encode(model);
    }).toList();
    var result = await _service.saveFavourites(value);
    return result;
  }
}
