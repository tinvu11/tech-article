import 'package:flutter_article/core/config/hive/hive_types.dart';
import 'package:flutter_article/data/models/settings/settings_snapshot.dart';
import 'package:hive/hive.dart';

// class SettingsSnapshotAdapter extends TypeAdapter<SettingsSnapshot> {
//   @override
//   final int typeId = HiveTypes.settingsSnapshot; // Đảm bảo typeId này khớp với class của bạn

//   @override
//   SettingsSnapshot read(BinaryReader reader) {
//     // Đọc các trường theo đúng thứ tự và fieldId bạn đã định nghĩa
//     final themeMode = reader.readInt();
//     return SettingsSnapshot(themeMode: themeMode);
//   }

//   @override
//   void write(BinaryWriter writer, SettingsSnapshot obj) {
//     // Ghi các trường theo đúng thứ tự và fieldId
//     // Field 0: themeMode
//     writer.writeInt(obj.themeMode);
//   }
// }

class SettingsSnapshotAdapter extends TypeAdapter<SettingsSnapshot> {
  @override
  final int typeId = HiveTypes.settingsSnapshot;

  @override
  SettingsSnapshot read(BinaryReader reader) {
    // Đọc theo thứ tự HiveField
    final themeMode = reader.read() as int;
    return SettingsSnapshot(themeMode: themeMode);
  }

  @override
  void write(BinaryWriter writer, SettingsSnapshot obj) {
    // Ghi theo thứ tự HiveField
    writer.write(obj.themeMode);
  }
}
