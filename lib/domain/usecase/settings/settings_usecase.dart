import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/usecase/usecase.dart';
import 'package:flutter_article/domain/repository/settings/settings_repo.dart';
import 'package:flutter_article/service_locator.dart';

class GetSettingsSnapshotUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return sl<SettingRepo>().getSettingsSnapshot();
  }
}

class SaveSettingsSnapshotUseCase extends UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return sl<SettingRepo>().saveSettingsSnapshot(params);
  }
}
