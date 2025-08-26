part of 'mark_screen_bloc.dart';

@freezed
class MarkScreenEvent with _$MarkScreenEvent {
  const factory MarkScreenEvent.bookMarksLoad() = _LoadMarks;
  const factory MarkScreenEvent.toggleMark({required String idArticle}) = _ToggleMark;
}
