part of 'setting_screen_bloc.dart';

@freezed
abstract class SettingScreenState with _$SettingScreenState {
  const factory SettingScreenState({
    @Default(SettingEntity()) SettingEntity settingsEntity,
  }) = _SettingsState;
}
