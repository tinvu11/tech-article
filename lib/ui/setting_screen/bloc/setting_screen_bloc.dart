import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/data/models/settings/settings_snapshot.dart';
import 'package:flutter_article/domain/usecase/settings/settings_usecase.dart';
import 'package:flutter_article/service_locator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_screen_event.dart';
part 'setting_screen_state.dart';
part 'setting_screen_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingScreenEvent, SettingScreenState> {
  SettingsBloc() : super(const SettingScreenState()) {
    on<SettingScreenEvent>((event, emit) async {
      await event.map(
        getSettings: (event) => _onGetSettings(event, emit),
        saveSettings: (event) => _onSaveSettings(event, emit),
      );
    });
  }

  _onGetSettings(_GetSettings event, Emitter<SettingScreenState> emit) async {
    // debugPrint('SettingsBloc: _onGetSettings');
    // final settingsSnapshot = _settingsRepository.call();
    // emit(SettingScreenState(settingsSnapshot: settingsSnapshot));
    try {
      final settingsSnapshot = await sl<GetSettingsSnapshotUseCase>().call();
      settingsSnapshot.fold(
        (failure) => debugPrint('SettingsBloc: _onGetSettings error: $failure'),
        (snapshot) => emit(SettingScreenState(settingsSnapshot: snapshot)),
      );
    } catch (e) {
      debugPrint('SettingsBloc: _onGetSettings error: $e');
    }
  }

  _onSaveSettings(_SaveSettings event, Emitter<SettingScreenState> emit) async {
    try {
      final currentSnapshot = state.settingsSnapshot;
      final newSnapshot = SettingsSnapshot(
        // seek: currentSnapshot.seek,
        themeMode: event.themeMode,
      );

      await sl<SaveSettingsSnapshotUseCase>().call(params: newSnapshot);
      emit(SettingScreenState(settingsSnapshot: newSnapshot));
    } catch (e) {
      debugPrint('SettingsBloc: _onSaveSettings error: $e');
    }
  }
}
