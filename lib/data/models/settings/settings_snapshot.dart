import 'package:flutter_article/domain/models/settings/settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:flutter_article/core/config/hive/hive_types.dart';

part 'settings_snapshot.freezed.dart';
part 'settings_snapshot.g.dart';

@freezed
@HiveType(typeId: HiveTypes.settingsSnapshot)
abstract class SettingsSnapshot with _$SettingsSnapshot {
  const factory SettingsSnapshot({@HiveField(0) @Default(0) int themeMode}) =
      _SettingsSnapshot;

  factory SettingsSnapshot.fromJson(Map<String, dynamic> json) =>
      _$SettingsSnapshotFromJson(json);
}

extension SettingsSnapshotX on SettingsSnapshot {
  SettingEntity toEntity() {
    return SettingEntity(isDarkMode: themeMode);
  }
}
