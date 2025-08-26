import 'package:flutter_article/core/api/dio_provider.dart';
import 'package:flutter_article/data/repository/categories/categories_repo_impl.dart';
import 'package:flutter_article/data/repository/home/articles_category_repo_impl.dart';
import 'package:flutter_article/data/repository/home/articles_all_repo_impl.dart';
import 'package:flutter_article/data/repository/marked_storage/marked_storage_repo_impl.dart';
import 'package:flutter_article/data/repository/marked_articles/marked_articles_repo_impl.dart';
import 'package:flutter_article/data/repository/search/search_repo_impl.dart';
import 'package:flutter_article/data/resource/categories/categories_serivice.dart';
import 'package:flutter_article/data/resource/home/articles_all_service.dart';
import 'package:flutter_article/data/resource/home/articles_category_service.dart';
import 'package:flutter_article/data/resource/marked_articles/marked_articles_service.dart';
import 'package:flutter_article/data/resource/marked_storage/marked_storage_service.dart';
import 'package:flutter_article/data/resource/search/search_service.dart';
import 'package:flutter_article/domain/repository/categories/categories_repo.dart';
import 'package:flutter_article/domain/repository/home/articles_category_repo.dart';
import 'package:flutter_article/domain/repository/home/articles_all_repo.dart';
import 'package:flutter_article/domain/repository/marked_articles/marked_articles_repo.dart';
import 'package:flutter_article/domain/repository/marked_storage/marked_storage_repo.dart';
import 'package:flutter_article/domain/repository/search/search_repo.dart';
import 'package:flutter_article/domain/usecase/categories/categories_usecase.dart';
import 'package:flutter_article/domain/usecase/home/articles_category_usecase.dart';
import 'package:flutter_article/domain/usecase/home/articles_all_usecase.dart';
import 'package:flutter_article/domain/usecase/marked_storage/marked_storage_usecase.dart';
import 'package:flutter_article/domain/usecase/marked_articles/marked_articles_usecase.dart';
import 'package:flutter_article/domain/usecase/search/search_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;
final localDio = DioProvider.instance();

Future<void> initializeDependencies() async {
  // home
  sl.registerSingleton<ArticlesAllRepo>(ArticlesAllRepoImpl());
  sl.registerSingleton<ArticlesAllService>(ArticlesAllServiceImpl());
  sl.registerSingleton<ArticlesAllUseCase>(ArticlesAllUseCase());

  // marked articles
  sl.registerSingleton<MarkedArticlesUseCase>(MarkedArticlesUseCase());
  sl.registerSingleton<MarkedArticlesRepo>(MarkedArticlesRepoImpl());
  sl.registerSingleton<MarkedArticlesService>(MarkedArticlesServiceImpl());

  // Marked Articles Storage
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => prefs);
  sl.registerSingleton<MarkedStorageService>(
    MarkedStorageServiceImpl(sharedPreferences: sl()),
  );
  sl.registerSingleton<MarkedStorageRepo>(MarkedStorageRepoImpl());

  sl.registerSingleton<AddMarkStorageUseCase>(AddMarkStorageUseCase(sl()));
  sl.registerSingleton<GetMarkedArticlesUseCase>(
    GetMarkedArticlesUseCase(sl()),
  );
  sl.registerSingleton<RemoveBookmarkUseCase>(RemoveBookmarkUseCase(sl()));
  sl.registerSingleton<IsBookmarkedUseCase>(IsBookmarkedUseCase(sl()));

  // search articles
  sl.registerSingleton<SearchUseCase>(SearchUseCase());
  sl.registerSingleton<SearchRepo>(SearchRepoImpl());
  sl.registerSingleton<SearchService>(SearchServiceImpl());

  // get categories
  sl.registerSingleton<CategoriesRepo>(CategoriesRepoImpl());
  sl.registerSingleton<CategoriesUseCase>(CategoriesUseCase());
  sl.registerSingleton<CategoriesService>(CategoriesServiceImpl());

  // get data by category
  sl.registerSingleton<ArticlesCategoryRepoImpl>(ArticlesCategoryRepoImpl());
  sl.registerSingleton<ArticlesCategoryUseCase>(ArticlesCategoryUseCase());
  sl.registerSingleton<ArticlesCategoryService>(ArticlesCategoryServiceImpl());
  sl.registerSingleton<ArticlesCategoryRepo>(
    ArticlesCategoryRepoImpl(),
  ); // domain/repository/home
}
