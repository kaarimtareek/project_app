import 'package:mobx/mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/enums/enums.dart';
import 'package:project_app/src/core/models/story.dart';
import 'package:project_app/src/core/service/story_service.dart';

part 'storyStore.g.dart';

class StoryStore = _StoryStoreBase with _$StoryStore;

abstract class _StoryStoreBase with Store {
  final StoryService _service = locator.get<StoryService>();
  @observable
  List<StoryModel> _stories;

  @observable
  StoriesState _state = StoriesState.idle;

  @computed
  StoriesState get state => _state;
  @computed
  List<StoryModel> get stories => _stories;

  Future _fetchStories(int userId) async {
    try {
      _stories = await _service.getStories(userId);
    } catch (e) {
      print('${e.toString()} from fetch stories');
      throw e;
    }
  }

  @action
  Future loadStories(int userId) async {
    _state = StoriesState.loading;
    try {
      await _fetchStories(userId);
      _state = StoriesState.idle;
    } catch (e) {
      print('$e from load stories');
      _state = StoriesState.error;
    } finally {
      print('object from load stories');
    }
  }

  @action
  Future retry(int userId) async => await loadStories(userId);
}
