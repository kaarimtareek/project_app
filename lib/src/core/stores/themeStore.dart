import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/enums/enums.dart';
import 'package:project_app/src/core/service/preferences_service.dart';

part 'themeStore.g.dart';

class ThemeStore = _ThemeStoreBase with _$ThemeStore;

abstract class _ThemeStoreBase with Store {
  final PreferencesService _service = locator.get<PreferencesService>();
  @observable
  ThemeData _themeData;

  @observable
  ThemeState _themeState;

  @computed
  ThemeData get themeData => _themeData;

  @computed
  ThemeState get themeState => _themeState;

  @action
  Future getThemePref() async {
    String result = await _service.getTheme();
    if (result == _service.darkTheme) {
      _themeData = ThemeData.dark();
      _themeState = ThemeState.dark;
    } else {
      _themeData = ThemeData.light();
      _themeState = ThemeState.light;
    }
  }

  Future setThemePref(String state) async => await _service.saveTheme(state);

  @action
  Future changeTheme(ThemeState state) async {
    _themeState = state;
    if (state == ThemeState.dark) {
      _themeData = ThemeData.dark();

      await setThemePref(_service.darkTheme);
    } else {
      _themeData = ThemeData.light();

      await setThemePref(_service.lightTheme);
    }
  }

  void dispose() {}
}
