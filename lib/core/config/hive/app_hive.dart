import 'package:flutter_article/data/models/settings/settings_snapshot.dart';
import 'package:flutter_article/data/models/settings/settings_snapshot_adapter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class AppHive {
  static const String settingsSnapshotKey = 'settingsSnapshot';

  Box<SettingsSnapshot> get settingsBox =>
      Hive.box<SettingsSnapshot>(settingsSnapshotKey);

  init() async {
    final dir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(dir.path);
    Hive.registerAdapter(SettingsSnapshotAdapter());
    await Hive.openBox<SettingsSnapshot>(settingsSnapshotKey);
  }
}
