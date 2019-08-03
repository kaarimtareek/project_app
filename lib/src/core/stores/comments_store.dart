import 'package:mobx/mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/enums/enums.dart';
import 'package:project_app/src/core/models/comment.dart';
import 'package:project_app/src/core/service/comments_service.dart';
part 'comments_store.g.dart';

class CommentsStore = _CommentsStoreBase with _$CommentsStore;

abstract class _CommentsStoreBase with Store {
  CommentsSerivce _serivce = locator.get<CommentsSerivce>();
  @observable
  List<CommentModel> comments;
  @observable
  CommentsState _state = CommentsState.idle;

  @computed
  CommentsState get state => _state;
  @action
  Future _fetchComments(int postId) async {
    comments = await _serivce.getComments(postId);
  }

  @action
  Future fetchComments(int postId) async {
    _state = CommentsState.loading;

    try {
      await _fetchComments(postId);
      _state = CommentsState.idle;
    } catch (e) {
      print('$e from commentsStore');
      _state = CommentsState.error;
    }
  }
}
