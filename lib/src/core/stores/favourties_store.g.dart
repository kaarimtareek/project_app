// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourties_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$FavouritesStore on _FavouritesStoreBase, Store {
  Computed<bool> _$hasFavouritesComputed;

  @override
  bool get hasFavourites =>
      (_$hasFavouritesComputed ??= Computed<bool>(() => super.hasFavourites))
          .value;

  final _$favouritesAtom = Atom(name: '_FavouritesStoreBase.favourites');

  @override
  ObservableList<StoryModel> get favourites {
    _$favouritesAtom.context.enforceReadPolicy(_$favouritesAtom);
    _$favouritesAtom.reportObserved();
    return super.favourites;
  }

  @override
  set favourites(ObservableList<StoryModel> value) {
    _$favouritesAtom.context.conditionallyRunInAction(() {
      super.favourites = value;
      _$favouritesAtom.reportChanged();
    }, _$favouritesAtom, name: '${_$favouritesAtom.name}_set');
  }

  final _$loadFavouritesFutureAtom =
      Atom(name: '_FavouritesStoreBase.loadFavouritesFuture');

  @override
  ObservableFuture get loadFavouritesFuture {
    _$loadFavouritesFutureAtom.context
        .enforceReadPolicy(_$loadFavouritesFutureAtom);
    _$loadFavouritesFutureAtom.reportObserved();
    return super.loadFavouritesFuture;
  }

  @override
  set loadFavouritesFuture(ObservableFuture value) {
    _$loadFavouritesFutureAtom.context.conditionallyRunInAction(() {
      super.loadFavouritesFuture = value;
      _$loadFavouritesFutureAtom.reportChanged();
    }, _$loadFavouritesFutureAtom,
        name: '${_$loadFavouritesFutureAtom.name}_set');
  }

  final _$_saveFavouritesAsyncAction = AsyncAction('_saveFavourites');

  @override
  Future<dynamic> _saveFavourites() {
    return _$_saveFavouritesAsyncAction.run(() => super._saveFavourites());
  }

  final _$_loadFavouritesAsyncAction = AsyncAction('_loadFavourites');

  @override
  Future<dynamic> _loadFavourites() {
    return _$_loadFavouritesAsyncAction.run(() => super._loadFavourites());
  }

  final _$_FavouritesStoreBaseActionController =
      ActionController(name: '_FavouritesStoreBase');

  @override
  void addFavourite(StoryModel model) {
    final _$actionInfo = _$_FavouritesStoreBaseActionController.startAction();
    try {
      return super.addFavourite(model);
    } finally {
      _$_FavouritesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFavourite(StoryModel model) {
    final _$actionInfo = _$_FavouritesStoreBaseActionController.startAction();
    try {
      return super.removeFavourite(model);
    } finally {
      _$_FavouritesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteFavourites() {
    final _$actionInfo = _$_FavouritesStoreBaseActionController.startAction();
    try {
      return super.deleteFavourites();
    } finally {
      _$_FavouritesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadFavourites() {
    final _$actionInfo = _$_FavouritesStoreBaseActionController.startAction();
    try {
      return super.loadFavourites();
    } finally {
      _$_FavouritesStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
