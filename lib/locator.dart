import 'package:get_it/get_it.dart';
import 'package:project_app/src/core/service/authentication_service.dart';
import 'package:project_app/src/core/service/comments_service.dart';
import 'package:project_app/src/core/service/favourite_service.dart';
import 'package:project_app/src/core/service/preferences_service.dart';
import 'package:project_app/src/core/service/story_service.dart';
import 'package:project_app/src/core/service/user_pref.dart';
import 'package:project_app/src/core/stores/authentication_store.dart';
import 'package:project_app/src/core/stores/comments_store.dart';
import 'package:project_app/src/core/stores/storyStore.dart';
import 'package:project_app/src/core/stores/themeStore.dart';
import 'package:project_app/src/core/stores/userStore.dart';

import 'src/core/stores/favourties_store.dart';

final GetIt locator = GetIt();

///first add the database then services then stores
void setUpLocator() {
  locator.registerLazySingleton<PreferencesService>(() => PreferencesService());
  locator.registerLazySingleton<AuthenticationService>(
      () => AuthenticationService());
  locator.registerLazySingleton<UserPref>(() => UserPref());
  locator.registerLazySingleton<ThemeStore>(() => ThemeStore());
  locator.registerLazySingleton<FavouriteSrvice>(() => FavouriteSrvice());
  locator.registerLazySingleton<CommentsSerivce>(() => CommentsSerivce());
  locator.registerLazySingleton<StoryService>(() => StoryService());
  locator.registerLazySingleton<CommentsStore>(() => CommentsStore());
  locator.registerLazySingleton<StoryStore>(() => StoryStore());
  locator.registerLazySingleton<FavouritesStore>(() => FavouritesStore());
  locator.registerLazySingleton<UserStore>(() => UserStore());
  locator
      .registerLazySingleton<AuthenticationStore>(() => AuthenticationStore());
}
