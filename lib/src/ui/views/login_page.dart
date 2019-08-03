import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/enums/enums.dart';
import 'package:project_app/src/core/stores/authentication_store.dart';
import 'package:project_app/src/core/stores/userStore.dart';
import 'package:project_app/src/ui/routing/routes.dart';
import 'package:project_app/src/ui/widgets/try_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _userIdController = TextEditingController();
    final UserStore user = locator.get<UserStore>();
    final AuthenticationStore authenticationStore =
        locator.get<AuthenticationStore>();
    void loginUI() async {
      if (!user.isBusy) {
        authenticationStore.getInput(_userIdController.text);

        await user.signUser(authenticationStore);

        if (user.loginState == LoginState.logined) {
          user.setUserPref();
          Navigator.pushReplacementNamed(context, RouteNames.mainPage);
        }
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Observer(builder: (context) {
            return TextField(
              controller: _userIdController,
              decoration: InputDecoration(
                  labelText: 'Enter Value from 1-10',
                  errorText: authenticationStore.error.userInput),
            );
          }),
          Observer(
              name: 'login button',
              builder: (context) {
                switch (user.authenticationState) {
                  case AuthenticationState.busy:
                    return Center(
                      child: CircularProgressIndicator(),
                    );

                    break;
                  case AuthenticationState.error:
                    return Center(
                      child: TryAgain(
                        tryAgain: loginUI,
                      ),
                    );
                    break;

                  case AuthenticationState.idle:
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                          child: Text('Login'), onPressed: loginUI),
                    );
                    break;

                  default:
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                          child: Text('Login'), onPressed: loginUI),
                    );
                    break;
                }
              })
        ],
      ),
    );
  }
}
