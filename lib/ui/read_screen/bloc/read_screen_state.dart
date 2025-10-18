part of 'read_screen_bloc.dart';

@freezed
class ReadScreenState with _$ReadScreenState {
  const factory ReadScreenState.initial({@Default(false) bool isMarked}) = _Initial;
  const factory ReadScreenState.error({required String message}) = _Error;
}
