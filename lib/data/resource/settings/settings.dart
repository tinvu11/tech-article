import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/config/hive/app_hive.dart';
import 'package:flutter_article/data/models/settings/settings_snapshot.dart';
import 'package:flutter_article/domain/models/settings/settings.dart';

abstract interface class SettingsService {
  Future<Either> getSettingsSnapshot();
  Future<Either> saveSettingsSnapshot(SettingEntity settingsSnapshot);
}

class SettingsServiceImpl implements SettingsService {
  static const String _settingsSnapshotKey = 'settingsSnapshot';
  final AppHive _appHive;

  SettingsServiceImpl({required AppHive appHive}) : _appHive = appHive;

  @override
  Future<Either> getSettingsSnapshot() async {
    try {
      final settings =
          _appHive.settingsBox.get(_settingsSnapshotKey) ?? SettingsSnapshot();
      return Right(settings.toEntity());
    } catch (e) {
      return Left('Failed to get settings snapshot');
    }
  }

  @override
  Future<Either> saveSettingsSnapshot(SettingEntity settingsSnapshot) async {
    try {
      final snapshotToSave = SettingsSnapshot(
        themeMode: settingsSnapshot.isDarkMode,
      );
      await _appHive.settingsBox.put(_settingsSnapshotKey, snapshotToSave);
      return Right(null);
    } catch (e) {
      return Left('Failed to save settings snapshot');
    }
  }
}
