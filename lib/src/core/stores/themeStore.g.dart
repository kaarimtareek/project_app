// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'themeStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$ThemeStore on _ThemeStoreBase, Store {
  Computed<ThemeData> _$themeDataComputed;

  @override
  ThemeData get themeData =>
      (_$themeDataComputed ??= Computed<ThemeData>(() => super.themeData))
          .value;
  Computed<ThemeState> _$themeStateComputed;

  @override
  ThemeState get themeState =>
      (_$themeStateComputed ??= Computed<ThemeState>(() => super.themeState))
          .value;

  final _$_themeDataAtom = Atom(name: '_ThemeStoreBase._themeData');

  @override
  ThemeData get _themeData {
    _$_themeDataAtom.context.enforceReadPolicy(_$_themeDataAtom);
    _$_themeDataAtom.reportObserved();
    return super._themeData;
  }

  @override
  set _themeData(ThemeData value) {
    _$_themeDataAtom.context.conditionallyRunInAction(() {
      super._themeData = value;
      _$_themeDataAtom.reportChanged();
    }, _$_themeDataAtom, name: '${_$_themeDataAtom.name}_set');
  }

  final _$_themeStateAtom = Atom(name: '_ThemeStoreBase._themeState');

  @override
  ThemeState get _themeState {
    _$_themeStateAtom.context.enforceReadPolicy(_$_themeStateAtom);
    _$_themeStateAtom.reportObserved();
    return super._themeState;
  }

  @override
  set _themeState(ThemeState value) {
    _$_themeStateAtom.context.conditionallyRunInAction(() {
      super._themeState = value;
      _$_themeStateAtom.reportChanged();
    }, _$_themeStateAtom, name: '${_$_themeStateAtom.name}_set');
  }

  final _$getThemePrefAsyncAction = AsyncAction('getThemePref');

  @override
  Future<dynamic> getThemePref() {
    return _$getThemePrefAsyncAction.run(() => super.getThemePref());
  }

  final _$changeThemeAsyncAction = AsyncAction('changeTheme');

  @override
  Future<dynamic> changeTheme(ThemeState state) {
    return _$changeThemeAsyncAction.run(() => super.changeTheme(state));
  }
}
