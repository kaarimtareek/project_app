// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$AuthenticationStore on _AuthenticationStoreBase, Store {
  final _$userInputAtom = Atom(name: '_AuthenticationStoreBase.userInput');

  @override
  String get userInput {
    _$userInputAtom.context.enforceReadPolicy(_$userInputAtom);
    _$userInputAtom.reportObserved();
    return super.userInput;
  }

  @override
  set userInput(String value) {
    _$userInputAtom.context.conditionallyRunInAction(() {
      super.userInput = value;
      _$userInputAtom.reportChanged();
    }, _$userInputAtom, name: '${_$userInputAtom.name}_set');
  }

  final _$authentciationStateAtom =
      Atom(name: '_AuthenticationStoreBase.authentciationState');

  @override
  AuthenticationState get authentciationState {
    _$authentciationStateAtom.context
        .enforceReadPolicy(_$authentciationStateAtom);
    _$authentciationStateAtom.reportObserved();
    return super.authentciationState;
  }

  @override
  set authentciationState(AuthenticationState value) {
    _$authentciationStateAtom.context.conditionallyRunInAction(() {
      super.authentciationState = value;
      _$authentciationStateAtom.reportChanged();
    }, _$authentciationStateAtom,
        name: '${_$authentciationStateAtom.name}_set');
  }

  final _$_AuthenticationStoreBaseActionController =
      ActionController(name: '_AuthenticationStoreBase');

  @override
  void getInput(String value) {
    final _$actionInfo =
        _$_AuthenticationStoreBaseActionController.startAction();
    try {
      return super.getInput(value);
    } finally {
      _$_AuthenticationStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$LoginError on _LoginErrorBase, Store {
  Computed<bool> _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors)).value;

  final _$userInputAtom = Atom(name: '_LoginErrorBase.userInput');

  @override
  String get userInput {
    _$userInputAtom.context.enforceReadPolicy(_$userInputAtom);
    _$userInputAtom.reportObserved();
    return super.userInput;
  }

  @override
  set userInput(String value) {
    _$userInputAtom.context.conditionallyRunInAction(() {
      super.userInput = value;
      _$userInputAtom.reportChanged();
    }, _$userInputAtom, name: '${_$userInputAtom.name}_set');
  }
}
