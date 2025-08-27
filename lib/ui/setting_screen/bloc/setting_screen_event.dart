part of 'setting_screen_bloc.dart';

@freezed
abstract class SettingScreenEvent with _$SettingScreenEvent {
  const factory SettingScreenEvent.getSettings() = _GetSettings;
  const factory SettingScreenEvent.saveSettings({required int themeMode}) =
      _SaveSettings;
}
