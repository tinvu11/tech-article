part of 'mark_screen_bloc.dart';

@freezed
class MarkScreenState with _$MarkScreenState {
  const factory MarkScreenState.initial() = _MarksInitial;

  const factory MarkScreenState.loaded({required List<String> idArticles, required List<ArticleDetailEntity> articles}) = _MarksLoaded;

  const factory MarkScreenState.error({required String message}) = _MarksError;
}
