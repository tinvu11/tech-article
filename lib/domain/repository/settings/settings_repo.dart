import 'package:dartz/dartz.dart';
import 'package:flutter_article/data/models/settings/settings_snapshot.dart';

abstract class SettingRepo {
  Future<Either> getSettingsSnapshot();
  Future<Either> saveSettingsSnapshot(SettingsSnapshot settingsSnapshot);
}
