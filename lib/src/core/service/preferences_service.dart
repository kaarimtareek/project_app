import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  final String userKey = 'userKey';
  final String themeKey = 'themeKey';
  final String darkTheme = 'dark';

  final String favStories = 'favouriteStories';
  final String lightTheme = 'light';

  Future<bool> saveTheme(String value) async {
    final instance = await SharedPreferences.getInstance();
    bool result = await instance.setString(themeKey, value);
    return result;
  }

  Future<bool> deleteUser() async {
    final instance = await SharedPreferences.getInstance();
    return instance.remove(userKey);
  }

  Future<bool> deleteFavourites() async {
    final instance = await SharedPreferences.getInstance();
    return instance.remove(favStories);
  }

  Future<String> getTheme() async {
    final instace = await SharedPreferences.getInstance();
    String result = instace.getString(themeKey);
    if (result != null) return result;
    return lightTheme;
  }

  Future<List<String>> getFavouriteStories() async {
    final instance = await SharedPreferences.getInstance();
    return instance.getStringList(favStories) ?? List<String>();
  }

  Future<bool> saveFavourites(List<String> value) async {
    final instance = await SharedPreferences.getInstance();
    final bool result = await instance.setStringList(favStories, value);
    return result;
  }

  Future<String> getUser() async {
    final instance = await SharedPreferences.getInstance();
    return instance.getString(userKey);
  }

  Future<bool> setUser(String user) async {
    final instance = await SharedPreferences.getInstance();
    final bool result = await instance.setString(userKey, user);
    return result;
  }

  Future getAllPrefs() async {}
}
