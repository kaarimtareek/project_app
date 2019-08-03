import 'package:flutter/material.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/stores/favourties_store.dart';
import 'package:project_app/src/core/stores/userStore.dart';
import 'package:project_app/src/ui/routing/routes.dart';
import 'package:project_app/src/ui/views/favourties_page.dart';
import 'package:project_app/src/ui/views/homePage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  UserStore _userStore = locator.get<UserStore>();
  int _currentIndex = 0;
  //final _controller = TabController(length: 2);

  @override
  Widget build(BuildContext context) {
    //_controller. = 2;
    return DefaultTabController(
      length: 2,
      initialIndex: _currentIndex,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                margin: EdgeInsets.all(0),
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.profilePage);
                  },
                  title: Text('${_userStore.user.name}'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  subtitle: Text(
                    'View Profile',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.settingPage);
                },
                title: Text('setting'),
                trailing: Icon(Icons.settings),
              ),
              ListTile(
                onTap: () {},
                title: Text('Give us feedback'),
                trailing: Icon(Icons.feedback),
              ),
              ListTile(
                onTap: () {
                  _userStore.logout();
                  locator.get<FavouritesStore>().deleteFavourites();
                  Navigator.pushReplacementNamed(context, RouteNames.loginPage);
                },
                title: Text('Logout'),
                trailing: Icon(Icons.exit_to_app),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Welcome ${_userStore.user.name}'),
          bottom: TabBar(
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            tabs: <Widget>[
              Tab(
                text: 'Stories',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Favourites',
                icon: Icon(Icons.favorite),
              )
            ],
          ),
        ),
        body: TabBarView(
          //  controller: _controller,
          children: <Widget>[HomePage(), FavouritePage()],
        ),
      ),
    );
  }
}
