// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$CommentsStore on _CommentsStoreBase, Store {
  Computed<CommentsState> _$stateComputed;

  @override
  CommentsState get state =>
      (_$stateComputed ??= Computed<CommentsState>(() => super.state)).value;

  final _$commentsAtom = Atom(name: '_CommentsStoreBase.comments');

  @override
  List<CommentModel> get comments {
    _$commentsAtom.context.enforceReadPolicy(_$commentsAtom);
    _$commentsAtom.reportObserved();
    return super.comments;
  }

  @override
  set comments(List<CommentModel> value) {
    _$commentsAtom.context.conditionallyRunInAction(() {
      super.comments = value;
      _$commentsAtom.reportChanged();
    }, _$commentsAtom, name: '${_$commentsAtom.name}_set');
  }

  final _$_stateAtom = Atom(name: '_CommentsStoreBase._state');

  @override
  CommentsState get _state {
    _$_stateAtom.context.enforceReadPolicy(_$_stateAtom);
    _$_stateAtom.reportObserved();
    return super._state;
  }

  @override
  set _state(CommentsState value) {
    _$_stateAtom.context.conditionallyRunInAction(() {
      super._state = value;
      _$_stateAtom.reportChanged();
    }, _$_stateAtom, name: '${_$_stateAtom.name}_set');
  }

  final _$_fetchCommentsAsyncAction = AsyncAction('_fetchComments');

  @override
  Future<dynamic> _fetchComments(int postId) {
    return _$_fetchCommentsAsyncAction.run(() => super._fetchComments(postId));
  }

  final _$fetchCommentsAsyncAction = AsyncAction('fetchComments');

  @override
  Future<dynamic> fetchComments(int postId) {
    return _$fetchCommentsAsyncAction.run(() => super.fetchComments(postId));
  }
}
