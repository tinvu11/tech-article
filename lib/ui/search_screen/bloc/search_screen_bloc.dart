import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:flutter_article/domain/usecase/marked_storage/marked_storage_usecase.dart';
import 'package:flutter_article/domain/usecase/search/search_usecase.dart';
import 'package:flutter_article/service_locator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_screen_state.dart';
part 'search_screen_event.dart';
part 'search_screen_bloc.freezed.dart';

class SearchScreenBloc extends Bloc<SearchScreenEvent, SearchScreenState> {
  SearchScreenBloc() : super(const _Initial()) {
    on<SearchScreenEvent>((event, emit) async {
      await event.map(
        search: (value) => _onSearchLoadEvent(value, emit),
        toggleMark: (value) => _toggleMark(value, emit),
      );
    });
  }

  Future<void> _onSearchLoadEvent(
    _Search event,
    Emitter<SearchScreenState> emit,
  ) async {
    emit(_Loading());
    try {
      final response = await sl<SearchUseCase>().call(params: event.query);
      final marked = await sl<GetMarkedArticlesUseCase>().call();

      // List<String> markedIds = marked.fold((l) => [], (data) => data.map((e) => e.id.toString()).toList());

      response.fold(
        (l) {
          emit(_Error(message: l));
        },
        (data) {
          if (data.isEmpty) {
            emit(_Loaded(articles: [], idListMarked: []));
            return;
          }
          emit(_Loaded(articles: data, idListMarked: marked));
        },
      );
    } catch (e) {
      emit(_Error(message: e.toString()));
    }
  }

  Future<void> _toggleMark(
    _ToggleMark event,
    Emitter<SearchScreenState> emit,
  ) async {
    if (state is _Loaded) {
      final currentState = state as _Loaded;
      final isCurrentlyMarked = currentState.idListMarked.contains(
        event.idArticle,
      );

      try {
        if (!isCurrentlyMarked) {
          // Add bookmark
          await sl<AddMarkStorageUseCase>().call(event.idArticle);
          final newIdArticles = [...currentState.idListMarked, event.idArticle];
          emit(currentState.copyWith(idListMarked: newIdArticles));
          print('Bookmark added successfully');
        } else {
          // Remove bookmark
          await sl<RemoveBookmarkUseCase>().call(event.idArticle);
          final newIdArticles = currentState
              .idListMarked // xoá id ra khỏi list
              .where((id) => id != event.idArticle)
              .toList();
          final newArticles = currentState.articles; // xoá bài báo ra khỏi UI

          emit(_Loaded(idListMarked: newIdArticles, articles: newArticles));
          print('Bookmark removed successfully');
        }
      } catch (e) {
        print('Failed to toggle bookmark: $e');
        emit(currentState);
      }
    }
  }
}
