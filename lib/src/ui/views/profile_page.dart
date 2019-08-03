import 'package:flutter/material.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/stores/userStore.dart';

class ProfilePage extends StatelessWidget {
  final UserStore user = locator.get<UserStore>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
            Center(
              child: ListTile(
                title: Text(
                  user.user.name,
                  style: TextStyle(fontSize: 24),
                ),
                trailing: Icon(Icons.edit),
              ),
            ),
            ListTile(
              title: Text('Email'),
            ),
            ListTile(
              onTap: () {},
              title: Text(user.user.email),
              trailing: Icon(Icons.edit),
            ),
            Divider(),
            ListTile(
              title: Text('Address'),
            ),
            ListTile(
              onTap: () {},
              title: Text(user.user.address.city),
              subtitle: Text(user.user.address.street),
              trailing: Icon(Icons.edit),
            ),
            Divider(),
            ListTile(
              title: Text('Id'),
            ),
            ListTile(
              onTap: () {},
              title: Text(user.user.id.toString()),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
