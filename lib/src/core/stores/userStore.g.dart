// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$UserStore on _UserStoreBase, Store {
  Computed<UserModel> _$userComputed;

  @override
  UserModel get user =>
      (_$userComputed ??= Computed<UserModel>(() => super.user)).value;
  Computed<LoginState> _$loginStateComputed;

  @override
  LoginState get loginState =>
      (_$loginStateComputed ??= Computed<LoginState>(() => super.loginState))
          .value;
  Computed<AuthenticationState> _$authenticationStateComputed;

  @override
  AuthenticationState get authenticationState =>
      (_$authenticationStateComputed ??=
              Computed<AuthenticationState>(() => super.authenticationState))
          .value;
  Computed<bool> _$isLoginedComputed;

  @override
  bool get isLogined =>
      (_$isLoginedComputed ??= Computed<bool>(() => super.isLogined)).value;
  Computed<bool> _$isBusyComputed;

  @override
  bool get isBusy =>
      (_$isBusyComputed ??= Computed<bool>(() => super.isBusy)).value;

  final _$_loginStateAtom = Atom(name: '_UserStoreBase._loginState');

  @override
  LoginState get _loginState {
    _$_loginStateAtom.context.enforceReadPolicy(_$_loginStateAtom);
    _$_loginStateAtom.reportObserved();
    return super._loginState;
  }

  @override
  set _loginState(LoginState value) {
    _$_loginStateAtom.context.conditionallyRunInAction(() {
      super._loginState = value;
      _$_loginStateAtom.reportChanged();
    }, _$_loginStateAtom, name: '${_$_loginStateAtom.name}_set');
  }

  final _$_authenticationStateAtom =
      Atom(name: '_UserStoreBase._authenticationState');

  @override
  AuthenticationState get _authenticationState {
    _$_authenticationStateAtom.context
        .enforceReadPolicy(_$_authenticationStateAtom);
    _$_authenticationStateAtom.reportObserved();
    return super._authenticationState;
  }

  @override
  set _authenticationState(AuthenticationState value) {
    _$_authenticationStateAtom.context.conditionallyRunInAction(() {
      super._authenticationState = value;
      _$_authenticationStateAtom.reportChanged();
    }, _$_authenticationStateAtom,
        name: '${_$_authenticationStateAtom.name}_set');
  }

  final _$_userAtom = Atom(name: '_UserStoreBase._user');

  @override
  UserModel get _user {
    _$_userAtom.context.enforceReadPolicy(_$_userAtom);
    _$_userAtom.reportObserved();
    return super._user;
  }

  @override
  set _user(UserModel value) {
    _$_userAtom.context.conditionallyRunInAction(() {
      super._user = value;
      _$_userAtom.reportChanged();
    }, _$_userAtom, name: '${_$_userAtom.name}_set');
  }

  final _$signUserAsyncAction = AsyncAction('signUser');

  @override
  Future<dynamic> signUser(ILogin login) {
    return _$signUserAsyncAction.run(() => super.signUser(login));
  }

  final _$tryAgainAsyncAction = AsyncAction('tryAgain');

  @override
  Future<dynamic> tryAgain(ILogin login) {
    return _$tryAgainAsyncAction.run(() => super.tryAgain(login));
  }

  final _$_signUserAsyncAction = AsyncAction('_signUser');

  @override
  Future<dynamic> _signUser(ILogin login) {
    return _$_signUserAsyncAction.run(() => super._signUser(login));
  }

  final _$getUserPrefAsyncAction = AsyncAction('getUserPref');

  @override
  Future<dynamic> getUserPref() {
    return _$getUserPrefAsyncAction.run(() => super.getUserPref());
  }

  final _$setUserPrefAsyncAction = AsyncAction('setUserPref');

  @override
  Future<bool> setUserPref() {
    return _$setUserPrefAsyncAction.run(() => super.setUserPref());
  }

  final _$_UserStoreBaseActionController =
      ActionController(name: '_UserStoreBase');

  @override
  void userBusy() {
    final _$actionInfo = _$_UserStoreBaseActionController.startAction();
    try {
      return super.userBusy();
    } finally {
      _$_UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void userError() {
    final _$actionInfo = _$_UserStoreBaseActionController.startAction();
    try {
      return super.userError();
    } finally {
      _$_UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void userIdle() {
    final _$actionInfo = _$_UserStoreBaseActionController.startAction();
    try {
      return super.userIdle();
    } finally {
      _$_UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void userLogined() {
    final _$actionInfo = _$_UserStoreBaseActionController.startAction();
    try {
      return super.userLogined();
    } finally {
      _$_UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logout() {
    final _$actionInfo = _$_UserStoreBaseActionController.startAction();
    try {
      return super.logout();
    } finally {
      _$_UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
