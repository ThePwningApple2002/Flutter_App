import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:somnium/models/models.dart';
import 'package:somnium/view/pages/pages.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return IntroPage();
        }),
    GoRoute(
        path: '/main_page',
        builder: (BuildContext context, GoRouterState state) {
          return MainPage();
        }),
    GoRoute(
        path: '/ind_music_page',
        builder: (BuildContext context, GoRouterState state) {
          final song = state.extra as Song;
          return IndMusicPage(
            song: song,
          );
        })
  ]);

  static GoRouter get router => _router;
}
