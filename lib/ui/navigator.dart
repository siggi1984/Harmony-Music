import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:harmonymusic/ui/screens/artist_screen.dart';
import 'package:harmonymusic/ui/screens/home_screen.dart';
import 'package:harmonymusic/ui/screens/playlistnalbum_screen.dart';
import 'package:harmonymusic/ui/screens/search_screen.dart';
import 'screens/search_result_screen.dart';

class ScreenNavigationSetup {
  ScreenNavigationSetup._();

  static const id = 1;
  static const homeScreen = '/homeScreen';
  static const playlistNAlbumScreen = '/playlistNAlbumScreen';
  static const searchScreen = '/searchScreen';
  static const searchResultScreen = '/searchResultScreen';
  static const artistScreen = '/artistScreen';
}

class ScreenNavigation extends StatelessWidget {
  const ScreenNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: Get.nestedKey(ScreenNavigationSetup.id),
        initialRoute: '/homeScreen',
        onGenerateRoute: (settings) {
          Get.routing.args = settings.arguments;
          if (settings.name == ScreenNavigationSetup.homeScreen) {
            return GetPageRoute(page: () => const HomeScreen(),settings: settings);
          } else if (settings.name == ScreenNavigationSetup.playlistNAlbumScreen) {
            return GetPageRoute(page: () => const PlaylistNAlbumScreen(), settings: settings);
          } else if (settings.name == ScreenNavigationSetup.searchScreen) {
            return GetPageRoute(page: () => const SearchScreen(), settings: settings);
          } else if (settings.name == ScreenNavigationSetup.searchResultScreen) {
            return GetPageRoute(page: () => const SearchResultScreen(), settings: settings);
          } else if (settings.name ==
              ScreenNavigationSetup.artistScreen) {
            return GetPageRoute(page: () => const ArtistScreen(), settings: settings);
          }
          return null;
        });
  }
}
