import 'package:flutter/material.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/stores/authentication_store.dart';
import 'package:project_app/src/core/stores/userStore.dart';
import 'package:project_app/src/ui/routing/routes.dart';

class TryAgain extends StatelessWidget {
  final Function tryAgain;
  final UserStore _store = locator.get<UserStore>();
  final AuthenticationStore _authenticationStore =
      locator.get<AuthenticationStore>();

  TryAgain({Key key, this.tryAgain}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Error Occured'),
        RaisedButton(
          onPressed: tryAgain,
          child: Text('Try Again'),
        ),
      ],
    );
  }
}
