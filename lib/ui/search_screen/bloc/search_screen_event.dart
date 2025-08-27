part of 'search_screen_bloc.dart';

@freezed
abstract class SearchScreenEvent with _$SearchScreenEvent {
  const factory SearchScreenEvent.search({required String query}) = _Search;
  const factory SearchScreenEvent.toggleMark({required String idArticle}) = _ToggleMark;
}
