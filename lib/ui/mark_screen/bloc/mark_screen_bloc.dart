import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:flutter_article/domain/usecase/marked_storage/marked_storage_usecase.dart';
import 'package:flutter_article/domain/usecase/marked_articles/marked_articles_usecase.dart';
import 'package:flutter_article/service_locator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mark_screen_event.dart';
part 'mark_screen_state.dart';
part 'mark_screen_bloc.freezed.dart';

class MarkScreenBloc extends Bloc<MarkScreenEvent, MarkScreenState> {
  MarkScreenBloc() : super(_MarksInitial()) {
    on<MarkScreenEvent>((event, emit) async {
      await event.map(
        bookMarksLoad: (value) async {
          await _onLoad(value, emit);
        },
        toggleMark: (value) async {
          await _toggleMark(value, emit);
        },
      );
    });
  }
  Future<void> _onLoad(
    MarkScreenEvent event,
    Emitter<MarkScreenState> emit,
  ) async {
    try {
      final response = await sl<MarkedArticlesUseCase>().call();
      response.fold(
        (l) {
          emit(_MarksError(message: "Failed to load bookmarks"));
        },
        (data) {
          if (data.isEmpty) {
            emit(_MarksLoaded(idArticles: [], articles: []));
            return;
          }
          List<String> idArticles = data
              .map<String>((e) => e.id.toString())
              .toList();
          emit(_MarksLoaded(idArticles: idArticles, articles: data));
        },
      );
    } catch (e) {
      emit(_MarksError(message: e.toString()));
    }
  }

  Future<void> _toggleMark(
    _ToggleMark event,
    Emitter<MarkScreenState> emit,
  ) async {
    if (state is _MarksLoaded) {
      final currentState = state as _MarksLoaded;
      final isCurrentlyMarked = currentState.idArticles.contains(
        event.idArticle,
      );

      try {
        if (!isCurrentlyMarked) {
          // Add bookmark
          await sl<AddMarkStorageUseCase>().call(event.idArticle);
          final newIdArticles = [...currentState.idArticles, event.idArticle];
          emit(currentState.copyWith(idArticles: newIdArticles));
          print('Bookmark added successfully');
        } else {
          // Remove bookmark
          await sl<RemoveBookmarkUseCase>().call(event.idArticle);
          final newIdArticles = currentState
              .idArticles // xoá id ra khỏi list
              .where((id) => id != event.idArticle)
              .toList();
          final newArticles = currentState
              .articles // xoá bài báo ra khỏi UI
              .where((article) => article.id != event.idArticle)
              .toList();
          emit(_MarksLoaded(idArticles: newIdArticles, articles: newArticles));
          print('Bookmark removed successfully');
        }
      } catch (e) {
        print('Failed to toggle bookmark: $e');
        emit(currentState);
      }
    }
  }
}
