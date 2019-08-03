import 'package:flutter/material.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/stores/favourties_store.dart';
import 'package:project_app/src/core/stores/userStore.dart';
import 'package:project_app/src/ui/routing/router.dart';
import 'package:project_app/src/ui/routing/routes.dart';
import 'package:project_app/src/ui/views/loadingPage.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'src/core/stores/themeStore.dart';

void main() async {
  setUpLocator();
  locator.get<FavouritesStore>().loadFavourites();
  await locator.get<UserStore>().getUserPref();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: locator.get<ThemeStore>().getThemePref(),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.active
              ? LoadingPage()
              : Observer(builder: (context) {
                  ThemeStore model = locator.get<ThemeStore>();
                  return MaterialApp(
                    theme: model.themeData ?? ThemeData.dark(),
                    initialRoute: locator.get<UserStore>().isLogined
                        ? RouteNames.mainPage
                        : RouteNames.loginPage,
                    onGenerateRoute: Router.generateRoute,
                  );
                });
        });
  }
}
