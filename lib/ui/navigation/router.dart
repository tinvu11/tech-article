import 'package:flutter/material.dart';
import 'package:flutter_article/ui/search_screen/bloc/search_screen_bloc.dart';
import 'package:flutter_article/ui/search_screen/result_screen.dart';
import 'package:flutter_article/ui/search_screen/search_screen.dart';
import 'package:flutter_article/ui/setting_screen/setting_screen.dart';
import 'package:flutter_article/ui/home_screen/bloc/home_bloc.dart';
import 'package:flutter_article/ui/mark_screen/bloc/mark_screen_bloc.dart';
import 'package:flutter_article/ui/mark_screen/mark_screen.dart';
import 'package:flutter_article/ui/read_screen/bloc/read_screen_bloc.dart';
import 'package:flutter_article/ui/read_screen/read_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:flutter_article/ui/home_screen/home_navigation.dart';
import 'package:flutter_article/ui/home_screen/home_screen.dart';
import 'package:flutter_article/service_locator.dart';
import 'package:go_router/go_router.dart';

part 'route_paths.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');

  static final router = GoRouter(
    initialLocation: RoutePaths.home,
    navigatorKey: rootNavigatorKey,
    routes: [
      // Read screen
      GoRoute(
        path: RoutePaths.read,
        parentNavigatorKey: rootNavigatorKey,
        pageBuilder: (context, state) {
          if (state.extra is ArticleDetailEntity) {
            final article = state.extra as ArticleDetailEntity;

            return MaterialPage(
              key: state.pageKey,
              child: BlocProvider(
                create: (context) => ReadScreenBloc(),
                child: ReadScreen(article: article),
              ),
            );
          }

          return const MaterialPage(
            child: Scaffold(
              body: Center(child: Text("Dữ liệu bài viết không hợp lệ")),
            ),
          );
        },
      ),

      GoRoute(
        path: RoutePaths.search,
        builder: (context, state) => BlocProvider.value(
          value: sl<SearchScreenBloc>(),
          child: const SearchScreen(),
        ),
      ),
      GoRoute(
        path: RoutePaths.result,
        builder: (context, state) {
          final searchTerm = state.extra as String? ?? '';
          return BlocProvider.value(
            value: sl<SearchScreenBloc>(),
            child: ResultScreen(searchTerm: searchTerm),
          );
        },
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => sl<HomeBloc>()),
              BlocProvider(create: (context) => sl<MarkScreenBloc>()),
            ],
            child: HomeNavigation(navigationShell: navigationShell),
          );
        },
        branches: [
          // Branch 1: Home
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePaths.home,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),

          // MarkScreen
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePaths.bookmarks,
                builder: (context, state) => const BookMarks(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RoutePaths.setting,
                builder: (context, state) => const SettingsScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
