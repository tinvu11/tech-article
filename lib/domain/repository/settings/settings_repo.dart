import 'package:dartz/dartz.dart';
import 'package:flutter_article/domain/models/settings/settings.dart';

abstract class SettingRepo {
  Future<Either> getSettingsSnapshot();
  Future<Either> saveSettingsSnapshot(SettingEntity settingsSnapshot);
}
