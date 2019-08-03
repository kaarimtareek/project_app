// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storyStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$StoryStore on _StoryStoreBase, Store {
  Computed<StoriesState> _$stateComputed;

  @override
  StoriesState get state =>
      (_$stateComputed ??= Computed<StoriesState>(() => super.state)).value;
  Computed<List<StoryModel>> _$storiesComputed;

  @override
  List<StoryModel> get stories =>
      (_$storiesComputed ??= Computed<List<StoryModel>>(() => super.stories))
          .value;

  final _$_storiesAtom = Atom(name: '_StoryStoreBase._stories');

  @override
  List<StoryModel> get _stories {
    _$_storiesAtom.context.enforceReadPolicy(_$_storiesAtom);
    _$_storiesAtom.reportObserved();
    return super._stories;
  }

  @override
  set _stories(List<StoryModel> value) {
    _$_storiesAtom.context.conditionallyRunInAction(() {
      super._stories = value;
      _$_storiesAtom.reportChanged();
    }, _$_storiesAtom, name: '${_$_storiesAtom.name}_set');
  }

  final _$_stateAtom = Atom(name: '_StoryStoreBase._state');

  @override
  StoriesState get _state {
    _$_stateAtom.context.enforceReadPolicy(_$_stateAtom);
    _$_stateAtom.reportObserved();
    return super._state;
  }

  @override
  set _state(StoriesState value) {
    _$_stateAtom.context.conditionallyRunInAction(() {
      super._state = value;
      _$_stateAtom.reportChanged();
    }, _$_stateAtom, name: '${_$_stateAtom.name}_set');
  }

  final _$loadStoriesAsyncAction = AsyncAction('loadStories');

  @override
  Future<dynamic> loadStories(int userId) {
    return _$loadStoriesAsyncAction.run(() => super.loadStories(userId));
  }

  final _$retryAsyncAction = AsyncAction('retry');

  @override
  Future<dynamic> retry(int userId) {
    return _$retryAsyncAction.run(() => super.retry(userId));
  }
}
