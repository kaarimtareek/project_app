import 'package:project_app/src/core/models/user.dart';
import 'package:project_app/src/core/service/preferences_service.dart';

import '../../../locator.dart';

class UserPref {
  PreferencesService _service = locator.get<PreferencesService>();
  Future<UserModel> getUser() async {
    var result = await _service.getUser();
    if (result == null) throw Exception();
    UserModel model = userModelFromJson(result);
    return model;
  }

  Future<bool> deleteUserPref() async {
    return await _service.deleteUser();
  }

  Future<bool> setUser(UserModel model) async {
    String data = userModelToJson(model);
    var result = await _service.setUser(data);
    return result;
  }
}
