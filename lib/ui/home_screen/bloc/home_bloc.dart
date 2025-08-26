import 'package:bloc/bloc.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:flutter_article/domain/models/response/home_data.dart';
import 'package:flutter_article/domain/usecase/categories/categories_usecase.dart';
import 'package:flutter_article/domain/usecase/home/articles_category_usecase.dart';
import 'package:flutter_article/domain/usecase/home/articles_all_usecase.dart';
import 'package:flutter_article/service_locator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(_TabContentLoading()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        loadTabHomeContent: (value) {
          _onLoadHome(value, emit);
        },
        loadTabCategoryContent: (value) {
          _onLoadCategoryContent(value, emit);
        },
        loadData: (value) async {
          await _onLoadData(value, emit);
        },
        refreshHome: (value) {
          emit(_TabContentInitial());
        },
      );
    });
  }

  Future<List<String>> _loadCategories() async {
    try {
      final categories = await sl<CategoriesUseCase>().call();
      return categories.fold(
        (failure) {
          return [];
        },
        (response) {
          List<String> categories = List<String>.from(response.categories);
          categories.insert(0, 'all');
          return categories;
        },
      );
    } catch (e) {
      return [];
    }
  }

  Future<void> _onLoadData(_LoadData event, Emitter<HomeState> emit) async {
    final String key = event.category ?? 'all';

    try {
      var response;

      if (key == 'all') {
        response = await sl<ArticlesAllUseCase>().call(
          params: HomeDataRequest(page: event.page, limit: event.limit),
        );
      } else {
        response = await sl<ArticlesCategoryUseCase>().call(
          params: HomeDataRequest(
            page: event.page,
            limit: event.limit,
            category: key,
          ),
        );
      }

      await response.fold(
        (failure) async {
          emit(_TabContentError(message: "Failed to load data for '$key'"));
        },
        (data) async {
          final currentState = state is _TabContentLoaded
              ? state as _TabContentLoaded
              : null;

          if (data.articles.isEmpty) {
            if (currentState != null) {
              final newHasReachedMax = {
                ...currentState.hasReachedMax,
                key: true,
              };
              emit(currentState.copyWith(hasReachedMax: newHasReachedMax));
            } else {
              emit(_TabContentError(message: "No more data and state is null"));
            }
            return;
          }

          // Lấy danh sách articles hiện tại hoặc list rỗng nếu là lần đầu
          final currentArticles = (event.page == 1)
              ? <ArticleDetailEntity>[]
              : currentState?.meta[key]?.articles ?? [];

          // Gộp danh sách articles cũ và mới
          final List<ArticleDetailEntity> newArticles = [
            ...currentArticles,
            ...data.articles,
          ];

          final updatedHomeData = HomeDataEntity(articles: newArticles);

          // Cập nhật các map
          final updatedMeta = {...?currentState?.meta, key: updatedHomeData};
          final newHasReachedMax = {
            ...?currentState?.hasReachedMax,
            key: false,
          };

          if (currentState == null) {
            final categories = await _loadCategories();
            emit(
              _TabContentLoaded(
                meta: updatedMeta,
                categories: categories,
                hasReachedMax: newHasReachedMax,
              ),
            );
          } else {
            emit(
              currentState.copyWith(
                meta: updatedMeta,
                hasReachedMax: newHasReachedMax,
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(_TabContentError(message: e.toString()));
    }
  }

  Future<void> _onLoadHome(
    _LoadTabHomeContent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final categories = await _loadCategories();

      final responseHome = await sl<ArticlesAllUseCase>().call(
        params: HomeDataRequest(page: event.page, limit: event.limit),
      );

      responseHome.fold(
        (l) {
          emit(_TabContentError(message: "Failed to load home data"));
        },

        (data) {
          final currentState = state is _TabContentLoaded
              ? state as _TabContentLoaded
              : null;

          if (data.articles.isEmpty) {
            if (currentState != null) {
              emit(
                currentState.copyWith(
                  hasReachedMax: {...currentState.hasReachedMax, 'all': true},
                ),
              );
            } else {
              emit(_TabContentError(message: "No data and state is null"));
            }
            return;
          }

          // Lầu đầu lấy dữ liệu, nếu page là 1 thì cập nhật meta mới
          if (event.page == 1) {
            Map<String, HomeDataEntity> newMeta = {
              ...currentState?.meta ?? {}, // Giữ meta cũ
              'all': data, // Thêm hoặc cập nhật category mới
            };
            Map<String, bool> newHasReachedMax = {
              ...currentState?.hasReachedMax ?? {}, // Giữ hasReachedMax cũ
              'all': false, // Thêm hoặc cập nhật category mới
            };

            emit(
              _TabContentLoaded(
                meta: newMeta,
                categories: categories,
                hasReachedMax: newHasReachedMax,
              ),
            );
          } else {
            // Nếu không phải page 1, cập nhật dữ liệu trong meta
            if (currentState == null || !currentState.meta.containsKey('all')) {
              emit(
                _TabContentError(
                  message: "Category ${'all'} not found in current state",
                ),
              );
              return;
            }

            // Tạo một HomeDataEntity mới với danh sách articles cập nhật
            final List<ArticleDetailEntity> currentArticles =
                currentState.meta['all']!.articles;
            final List<ArticleDetailEntity> newArticles = [
              ...currentArticles,
              ...data.articles,
            ];
            final updatedHomeData = HomeDataEntity(articles: newArticles);

            Map<String, HomeDataEntity> updatedMeta = {
              ...currentState.meta,
              'all': updatedHomeData,
            };

            Map<String, bool> newHasReachedMax = {
              ...currentState.hasReachedMax, // Giữ hasReachedMax cũ
              'all': false, // Thêm hoặc cập nhật category mới
            };

            // emit(_TabContentLoaded(meta: updatedMeta, categories: categories));
            emit(
              currentState.copyWith(
                meta: updatedMeta,
                hasReachedMax: newHasReachedMax,
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(_TabContentError(message: e.toString()));
    }
  }

  Future<void> _onLoadCategoryContent(
    _LoadTabCategoryContent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final categories = await _loadCategories();

      final responseCategory = await sl<ArticlesCategoryUseCase>().call(
        params: HomeDataRequest(
          page: event.page,
          limit: event.limit,
          category: event.category,
        ),
      );
      responseCategory.fold(
        (l) {
          emit(_TabContentError(message: "Failed to load category data"));
        },
        (data) {
          // Lấy state hiện tại để giữ dữ liệu meta cũ

          final currentState = state is _TabContentLoaded
              ? state as _TabContentLoaded
              : null;

          if (data.articles.isEmpty) {
            if (currentState != null) {
              emit(
                currentState.copyWith(
                  hasReachedMax: {
                    ...currentState.hasReachedMax,
                    event.category: true,
                  },
                ),
              );
            } else {
              emit(_TabContentError(message: "No data and state is null"));
            }
            return;
          }

          // Lầu đầu lấy dữ liệu, nếu page là 1 thì cập nhật meta mới
          if (event.page == 1) {
            Map<String, HomeDataEntity> newMeta = {
              ...currentState?.meta ?? {}, // Giữ meta cũ
              event.category: data, // Thêm hoặc cập nhật category mới
            };
            Map<String, bool> newHasReachedMax = {
              ...currentState?.hasReachedMax ?? {}, // Giữ hasReachedMax cũ
              event.category: false, // Thêm hoặc cập nhật category mới
            };

            emit(
              _TabContentLoaded(
                meta: newMeta,
                categories: categories,
                hasReachedMax: newHasReachedMax,
              ),
            );
          } else {
            // Nếu không phải page 1, cập nhật dữ liệu trong meta
            if (currentState == null ||
                !currentState.meta.containsKey(event.category)) {
              emit(
                _TabContentError(
                  message:
                      "Category ${event.category} not found in current state",
                ),
              );
              return;
            }

            // Tạo một HomeDataEntity mới với danh sách articles cập nhật
            final List<ArticleDetailEntity> currentArticles =
                currentState.meta[event.category]!.articles;
            final List<ArticleDetailEntity> newArticles = [
              ...currentArticles,
              ...data.articles,
            ];
            final updatedHomeData = HomeDataEntity(articles: newArticles);

            Map<String, HomeDataEntity> updatedMeta = {
              ...currentState.meta,
              event.category: updatedHomeData,
            };

            Map<String, bool> newHasReachedMax = {
              ...currentState.hasReachedMax, // Giữ hasReachedMax cũ
              event.category: false, // Thêm hoặc cập nhật category mới
            };

            // emit(_TabContentLoaded(meta: updatedMeta, categories: categories));
            emit(
              currentState.copyWith(
                meta: updatedMeta,
                hasReachedMax: newHasReachedMax,
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(_TabContentError(message: e.toString()));
    }
  }
}
