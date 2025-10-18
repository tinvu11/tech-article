// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingScreenEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SettingScreenEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingScreenEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SettingScreenEvent()';
}


}

/// @nodoc
class $SettingScreenEventCopyWith<$Res>  {
$SettingScreenEventCopyWith(SettingScreenEvent _, $Res Function(SettingScreenEvent) __);
}


/// Adds pattern-matching-related methods to [SettingScreenEvent].
extension SettingScreenEventPatterns on SettingScreenEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetSettings value)?  getSettings,TResult Function( _SaveSettings value)?  saveSettings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSettings() when getSettings != null:
return getSettings(_that);case _SaveSettings() when saveSettings != null:
return saveSettings(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetSettings value)  getSettings,required TResult Function( _SaveSettings value)  saveSettings,}){
final _that = this;
switch (_that) {
case _GetSettings():
return getSettings(_that);case _SaveSettings():
return saveSettings(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetSettings value)?  getSettings,TResult? Function( _SaveSettings value)?  saveSettings,}){
final _that = this;
switch (_that) {
case _GetSettings() when getSettings != null:
return getSettings(_that);case _SaveSettings() when saveSettings != null:
return saveSettings(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getSettings,TResult Function( int themeMode)?  saveSettings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSettings() when getSettings != null:
return getSettings();case _SaveSettings() when saveSettings != null:
return saveSettings(_that.themeMode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getSettings,required TResult Function( int themeMode)  saveSettings,}) {final _that = this;
switch (_that) {
case _GetSettings():
return getSettings();case _SaveSettings():
return saveSettings(_that.themeMode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getSettings,TResult? Function( int themeMode)?  saveSettings,}) {final _that = this;
switch (_that) {
case _GetSettings() when getSettings != null:
return getSettings();case _SaveSettings() when saveSettings != null:
return saveSettings(_that.themeMode);case _:
  return null;

}
}

}

/// @nodoc


class _GetSettings with DiagnosticableTreeMixin implements SettingScreenEvent {
  const _GetSettings();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SettingScreenEvent.getSettings'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSettings);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SettingScreenEvent.getSettings()';
}


}




/// @nodoc


class _SaveSettings with DiagnosticableTreeMixin implements SettingScreenEvent {
  const _SaveSettings({required this.themeMode});
  

 final  int themeMode;

/// Create a copy of SettingScreenEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveSettingsCopyWith<_SaveSettings> get copyWith => __$SaveSettingsCopyWithImpl<_SaveSettings>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SettingScreenEvent.saveSettings'))
    ..add(DiagnosticsProperty('themeMode', themeMode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveSettings&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SettingScreenEvent.saveSettings(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$SaveSettingsCopyWith<$Res> implements $SettingScreenEventCopyWith<$Res> {
  factory _$SaveSettingsCopyWith(_SaveSettings value, $Res Function(_SaveSettings) _then) = __$SaveSettingsCopyWithImpl;
@useResult
$Res call({
 int themeMode
});




}
/// @nodoc
class __$SaveSettingsCopyWithImpl<$Res>
    implements _$SaveSettingsCopyWith<$Res> {
  __$SaveSettingsCopyWithImpl(this._self, this._then);

  final _SaveSettings _self;
  final $Res Function(_SaveSettings) _then;

/// Create a copy of SettingScreenEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(_SaveSettings(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SettingScreenState implements DiagnosticableTreeMixin {

 SettingsSnapshot get settingsSnapshot;
/// Create a copy of SettingScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingScreenStateCopyWith<SettingScreenState> get copyWith => _$SettingScreenStateCopyWithImpl<SettingScreenState>(this as SettingScreenState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SettingScreenState'))
    ..add(DiagnosticsProperty('settingsSnapshot', settingsSnapshot));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingScreenState&&(identical(other.settingsSnapshot, settingsSnapshot) || other.settingsSnapshot == settingsSnapshot));
}


@override
int get hashCode => Object.hash(runtimeType,settingsSnapshot);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SettingScreenState(settingsSnapshot: $settingsSnapshot)';
}


}

/// @nodoc
abstract mixin class $SettingScreenStateCopyWith<$Res>  {
  factory $SettingScreenStateCopyWith(SettingScreenState value, $Res Function(SettingScreenState) _then) = _$SettingScreenStateCopyWithImpl;
@useResult
$Res call({
 SettingsSnapshot settingsSnapshot
});


$SettingsSnapshotCopyWith<$Res> get settingsSnapshot;

}
/// @nodoc
class _$SettingScreenStateCopyWithImpl<$Res>
    implements $SettingScreenStateCopyWith<$Res> {
  _$SettingScreenStateCopyWithImpl(this._self, this._then);

  final SettingScreenState _self;
  final $Res Function(SettingScreenState) _then;

/// Create a copy of SettingScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settingsSnapshot = null,}) {
  return _then(_self.copyWith(
settingsSnapshot: null == settingsSnapshot ? _self.settingsSnapshot : settingsSnapshot // ignore: cast_nullable_to_non_nullable
as SettingsSnapshot,
  ));
}
/// Create a copy of SettingScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsSnapshotCopyWith<$Res> get settingsSnapshot {
  
  return $SettingsSnapshotCopyWith<$Res>(_self.settingsSnapshot, (value) {
    return _then(_self.copyWith(settingsSnapshot: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingScreenState].
extension SettingScreenStatePatterns on SettingScreenState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SettingsSnapshot settingsSnapshot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.settingsSnapshot);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SettingsSnapshot settingsSnapshot)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.settingsSnapshot);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SettingsSnapshot settingsSnapshot)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.settingsSnapshot);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState with DiagnosticableTreeMixin implements SettingScreenState {
  const _SettingsState({this.settingsSnapshot = const SettingsSnapshot()});
  

@override@JsonKey() final  SettingsSnapshot settingsSnapshot;

/// Create a copy of SettingScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SettingScreenState'))
    ..add(DiagnosticsProperty('settingsSnapshot', settingsSnapshot));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.settingsSnapshot, settingsSnapshot) || other.settingsSnapshot == settingsSnapshot));
}


@override
int get hashCode => Object.hash(runtimeType,settingsSnapshot);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SettingScreenState(settingsSnapshot: $settingsSnapshot)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingScreenStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 SettingsSnapshot settingsSnapshot
});


@override $SettingsSnapshotCopyWith<$Res> get settingsSnapshot;

}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settingsSnapshot = null,}) {
  return _then(_SettingsState(
settingsSnapshot: null == settingsSnapshot ? _self.settingsSnapshot : settingsSnapshot // ignore: cast_nullable_to_non_nullable
as SettingsSnapshot,
  ));
}

/// Create a copy of SettingScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsSnapshotCopyWith<$Res> get settingsSnapshot {
  
  return $SettingsSnapshotCopyWith<$Res>(_self.settingsSnapshot, (value) {
    return _then(_self.copyWith(settingsSnapshot: value));
  });
}
}

// dart format on
