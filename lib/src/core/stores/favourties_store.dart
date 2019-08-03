import 'package:mobx/mobx.dart';
import 'package:project_app/locator.dart';
import 'package:project_app/src/core/models/story.dart';
import 'package:project_app/src/core/service/favourite_service.dart';

part 'favourties_store.g.dart';

class FavouritesStore = _FavouritesStoreBase with _$FavouritesStore;

abstract class _FavouritesStoreBase with Store {
  FavouriteSrvice _service = locator.get<FavouriteSrvice>();
  @observable
  ObservableList<StoryModel> favourites = ObservableList<StoryModel>();
  @observable
  ObservableFuture loadFavouritesFuture;

  @computed
  bool get hasFavourites => favourites != null || favourites.isNotEmpty;
  bool isFavourite(int storyId) {
    bool result = favourites.any((model) {
      return storyId == model.id;
    });
    return result;
  }

  @action
  Future _saveFavourites() async => await _service.setFavourites(favourites);

  @action
  void addFavourite(StoryModel model) {
    favourites.add(model);
    _saveFavourites();
  }

  @action
  void removeFavourite(StoryModel model) {
    favourites.remove(model);
    _saveFavourites();
  }

  @action
  void deleteFavourites() {
    favourites.clear();
    _service.deleteFavourites();
  }

  @action
  void loadFavourites() =>
      loadFavouritesFuture = ObservableFuture(_loadFavourites());

  @action
  Future _loadFavourites() async => await _service.getFavourites().then((list) {
        favourites.clear();
        print('${list.length} from load favourites');
        list.forEach((e) {
          favourites.add(e);
        });
      });
}
