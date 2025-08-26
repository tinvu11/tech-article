part of 'read_screen_bloc.dart';

@freezed
class ReadScreenEvent with _$ReadScreenEvent {
  const factory ReadScreenEvent.openScreen({required String idArticle}) = _OpenScreen;
  const factory ReadScreenEvent.toggleMark({required String articleID}) = _ToggleMark;
}
