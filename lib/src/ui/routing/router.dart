import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_app/src/core/models/story.dart';
import 'package:project_app/src/ui/routing/routes.dart';
import 'package:project_app/src/ui/views/details_page.dart';
import 'package:project_app/src/ui/views/favourties_page.dart';
import 'package:project_app/src/ui/views/homePage.dart';
import 'package:project_app/src/ui/views/login_page.dart';
import 'package:project_app/src/ui/views/main_page.dart';
import 'package:project_app/src/ui/views/profile_page.dart';
import 'package:project_app/src/ui/views/settingPage.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.profilePage:
        return MaterialPageRoute(builder: (_) => ProfilePage());
        break;
      case RouteNames.homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case RouteNames.mainPage:
        return MaterialPageRoute(builder: (_) => MainPage());
      case RouteNames.favPage:
        return MaterialPageRoute(builder: (_) => FavouritePage());
      case RouteNames.loginPage:
        return MaterialPageRoute(builder: (_) => LoginPage());
        break;
      case RouteNames.detailsPage:
        StoryModel model = settings.arguments as StoryModel;
        return MaterialPageRoute(
            builder: (_) => DetailsPage(
                  story: model,
                ));
        break;
      case RouteNames.settingPage:
        return MaterialPageRoute(builder: (_) => SettingPage());
      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('Navigation Error Occured'),
      ),
    );
  }
}
