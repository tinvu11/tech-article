import 'package:dartz/dartz.dart';
import 'package:flutter_article/data/models/settings/settings_snapshot.dart';
import 'package:flutter_article/data/resource/settings/settings.dart';
import 'package:flutter_article/domain/models/settings/settings.dart';
import 'package:flutter_article/domain/repository/settings/settings_repo.dart';
import 'package:flutter_article/service_locator.dart';

class SettingRepoImpl implements SettingRepo {
  @override
  Future<Either> getSettingsSnapshot() {
    return sl<SettingsService>().getSettingsSnapshot();
  }

  @override
  Future<Either> saveSettingsSnapshot(SettingEntity settingsSnapshot) {
    return sl<SettingsService>().saveSettingsSnapshot(settingsSnapshot);
  }
}
