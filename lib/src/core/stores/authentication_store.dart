import 'package:http_client_helper/http_client_helper.dart';
import 'package:mobx/mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/enums/enums.dart';
import 'package:project_app/src/core/models/user.dart';
import 'package:project_app/src/core/service/authentication_service.dart';
part 'authentication_store.g.dart';

abstract class ILogin {
  Future<UserModel> validateInput();
}

class AuthenticationStore = _AuthenticationStoreBase with _$AuthenticationStore;

abstract class _AuthenticationStoreBase with Store implements ILogin {
  LoginError error = LoginError();
  AuthenticationService _authenticationService =
      locator.get<AuthenticationService>();
  @observable
  String userInput;
  @observable
  AuthenticationState authentciationState = AuthenticationState.idle;
  @override
  Future<UserModel> validateInput() async {
    authentciationState = AuthenticationState.busy;
    error.userInput = null;
    var result = int.tryParse(userInput);
    if (result == null) {
      error.userInput = 'Enter Only Numbers';
      authentciationState = AuthenticationState.idle;
      return null;
      //  throw Exception();
    } else if (result > 10 || result < 0) {
      error.userInput = 'Enter Numbers between 0-10';
      authentciationState = AuthenticationState.idle;
      return null;
      //  throw Exception();
    } else {
      UserModel model;
      try {
        model = await _authenticationService.getUser(result);
        return model;
      } catch (e) {
        print('$e in authentication store');
        throw e;
      } finally {
        error.userInput = null;
        // authentciationState = AuthenticationState.idle;
      }
    }
  }

  @action
  void getInput(String value) => userInput = value;

  //ReactionDisposer disposer;
  // void setUpDisposer() {
  //   // disposer = reaction(predicate, effect);
  // }
}

class LoginError = _LoginErrorBase with _$LoginError;

abstract class _LoginErrorBase with Store {
  @observable
  String userInput;
  @computed
  bool get hasErrors => userInput != null;
}
