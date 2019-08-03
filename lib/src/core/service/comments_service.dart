import 'package:http/http.dart' as http;
import 'package:project_app/src/core/models/comment.dart';

class CommentsSerivce {
  // http.Client _client = http.Client();
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';
  Future<List<CommentModel>> getComments(int postId) async {
    List<CommentModel> model;
    try {
      http.Response response =
          await http.get("$_baseUrl/comments?postId=$postId").timeout(
                Duration(seconds: 5),
              );
      if (response.statusCode == 200) {
        model = commentModelFromJson(response.body);
      }
      return model;
    } catch (e) {
      print('$e from comment service');
      throw e;
    }
  }
}
