import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:somnium/models/models.dart';
import 'package:somnium/view/pages/pages.dart';
import 'package:somnium/view/widgets/widgets.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return IntroPage();
        },
      ),
      ShellRoute(
        builder: (context, state, child) {
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavBar(
              currentIndex: _calculateSelectedIndex(state),
            ),
          );
        },
        routes: [
          GoRoute(
            path: '/home_page',
            builder: (context, state) => HomePage(), // Create a HomePage widget
          ),
          GoRoute(
            path: '/music_page',
            builder: (context, state) => MusicPage(),
            routes: [
              GoRoute(
                path: '/ind_music_page',
                builder: (context, state) {
                  final song = state.extra as Song;
                  return IndMusicPage(song: song);
                },
              ),
            ],
          ),
          GoRoute(
            path: '/sleep_page',
            builder: (context, state) => SleepPage(), // Create a SleepPage widget
          ),
          GoRoute(
            path: '/insight_page',
            builder: (context, state) => InsightPage(), // Create an InsightPage widget
          ),
          GoRoute(
            path: '/profile_page',
            builder: (context, state) => ProfilePage(), // Create a ProfilePage widget
          ),
        ],
      ),
    ],
  );

  static GoRouter get router => _router;

  static int _calculateSelectedIndex(GoRouterState state) {
    final String location = state.uri.toString();
    if (location.startsWith('/home_page')) return 0;
    if (location.startsWith('/music_page')) return 1;
    if (location.startsWith('/sleep_page')) return 2;
    if (location.startsWith('/insight_page')) return 3;
    if (location.startsWith('/profile_page')) return 4;
    return 0;
  }
}
