import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/enums/enums.dart';
import 'package:project_app/src/core/stores/themeStore.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isDark;

  final ThemeStore _themeStore = locator.get<ThemeStore>();

  @override
  Widget build(BuildContext context) {
    isDark = _themeStore.themeState == ThemeState.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: ListView(
        children: <Widget>[
          Observer(builder: (
            context,
          ) {
            return SwitchListTile(
              title: Text('Change Theme'),
              value:
                  //isDark,
                  _themeStore.themeState == ThemeState.dark,
              onChanged: (value) async {
                if (_themeStore.themeState == ThemeState.dark) {
                  await _themeStore.changeTheme(ThemeState.light);
                } else {
                  await _themeStore.changeTheme(ThemeState.dark);
                }
              },
            );
          })
        ],
      ),
    );
  }
}
