part of 'search_screen_bloc.dart';

@freezed
class SearchScreenState with _$SearchScreenState {
  const factory SearchScreenState.initial() = _Initial;
  const factory SearchScreenState.loading() = _Loading;
  const factory SearchScreenState.loaded({required List<ArticleDetailEntity> articles, required List<String> idListMarked}) = _Loaded;
  const factory SearchScreenState.error({required String message}) = _Error;
}
