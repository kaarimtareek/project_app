import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_app/src/core/models/story.dart';

class StoryService {
  //http.Client _client = http.Client();
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<StoryModel>> getStories(int userId) async {
    http.Response response;
    try {
      response = await http.get("$_baseUrl/posts?userId=$userId").timeout(
            Duration(seconds: 5),
          );

      List<StoryModel> stories = storyModelFromJson(response.body);
      print(stories.length.toString());
      print('from story service');
      return stories;
    } catch (e) {
      print('${e.toString()} from get stories');
      throw e;
    }
  }

  Future<bool> postStory(StoryModel story) async {
    http.Response response =
        await http.post("$_baseUrl/posts", body: jsonEncode(story.toJson()));
    if (response.statusCode == 200) return true;
    return false;
  }

  Future<bool> deleteStory(int storyId) async {
    http.Response response = await http.delete("$_baseUrl/posts/$storyId");
    if (response.statusCode == 200) return true;
    return false;
  }
}
