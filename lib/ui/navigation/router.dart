import 'package:flutter/material.dart';
import 'package:flutter_article/ui/home_screen/bloc/home_bloc.dart';
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

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MultiBlocProvider(
            providers: [BlocProvider(create: (context) => sl<HomeBloc>())],
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
        ],
      ),
    ],
  );
}
