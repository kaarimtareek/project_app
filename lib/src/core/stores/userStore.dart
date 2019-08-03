import 'package:mobx/mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/enums/enums.dart';
import 'package:project_app/src/core/models/user.dart';
import 'package:project_app/src/core/service/user_pref.dart';
import 'package:project_app/src/core/stores/authentication_store.dart';

part 'userStore.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  UserPref _service = locator.get<UserPref>();
  @observable
  LoginState _loginState = LoginState.notLogined;
  @observable
  AuthenticationState _authenticationState = AuthenticationState.idle;
  @observable
  UserModel _user;
  @computed
  UserModel get user => _user;
  @computed
  LoginState get loginState => _loginState;
  @computed
  AuthenticationState get authenticationState => _authenticationState;
  @computed
  bool get isLogined => _loginState == LoginState.logined;
  @computed
  bool get isBusy => _authenticationState == AuthenticationState.busy;

  @action
  void userBusy() => _authenticationState = AuthenticationState.busy;
  @action
  void userError() => _authenticationState = AuthenticationState.error;
  @action
  void userIdle() => _authenticationState = AuthenticationState.idle;
  @action
  void userLogined() => _loginState = LoginState.logined;

  @action
  Future signUser(ILogin login) async => _signUser(login);

  @action
  Future tryAgain(ILogin login) async => _signUser(login);
  @action
  Future _signUser(ILogin login) async {
    _authenticationState = AuthenticationState.busy;
    try {
      var result = await login.validateInput();
      if (result != null) {
        _user = result;
        _loginState = LoginState.logined;
      }
      _authenticationState = AuthenticationState.idle;
    } catch (e) {
      print('$e  in sign user store');
      _authenticationState = AuthenticationState.error;
    }
  }

  @action
  Future getUserPref() async {
    try {
      _user = await _service.getUser();
      _loginState = LoginState.logined;
    } catch (e) {
      print('$e get user pref');
      _loginState = LoginState.notLogined;
    }
  }

  @action
  void logout() {
    _user = null;
    _loginState = LoginState.notLogined;
    _service.deleteUserPref();
  }

  @action
  Future<bool> setUserPref() async {
    try {
      var result = await _service.setUser(_user);
      return result;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
