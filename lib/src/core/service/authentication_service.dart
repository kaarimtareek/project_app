import 'dart:async';
import 'dart:io';
// import 'package:http_middleware/http_middleware.dart';
// import 'package:http_logger/http_logger.dart';
// import 'package:http_client_helper/http_client_helper.dart';

import 'package:http/http.dart' as http;
import 'package:project_app/src/core/models/user.dart';

class AuthenticationService {
  // http.Client _client = http.Client();
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<UserModel> getUser(int userId) async {
    UserModel user;
    try {
      final response = await http
          .get(
            "$_baseUrl/users/$userId",
          )
          .timeout(Duration(seconds: 5));
      user = userModelFromJson(response.body);
      return user;
    } on TimeoutException catch (e) {
      print('$e in authentication service');
      throw e;
    } on SocketException catch (e) {
      print('$e in authentication service');
      throw e;
    } catch (e) {
      print('$e in authentication service');
      throw e;
    }
  }
}
