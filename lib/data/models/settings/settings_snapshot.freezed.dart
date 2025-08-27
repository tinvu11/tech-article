// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsSnapshot {

@HiveField(0) int get themeMode;
/// Create a copy of SettingsSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsSnapshotCopyWith<SettingsSnapshot> get copyWith => _$SettingsSnapshotCopyWithImpl<SettingsSnapshot>(this as SettingsSnapshot, _$identity);

  /// Serializes this SettingsSnapshot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsSnapshot&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'SettingsSnapshot(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $SettingsSnapshotCopyWith<$Res>  {
  factory $SettingsSnapshotCopyWith(SettingsSnapshot value, $Res Function(SettingsSnapshot) _then) = _$SettingsSnapshotCopyWithImpl;
@useResult
$Res call({
@HiveField(0) int themeMode
});




}
/// @nodoc
class _$SettingsSnapshotCopyWithImpl<$Res>
    implements $SettingsSnapshotCopyWith<$Res> {
  _$SettingsSnapshotCopyWithImpl(this._self, this._then);

  final SettingsSnapshot _self;
  final $Res Function(SettingsSnapshot) _then;

/// Create a copy of SettingsSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themeMode = null,}) {
  return _then(_self.copyWith(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsSnapshot].
extension SettingsSnapshotPatterns on SettingsSnapshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsSnapshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _SettingsSnapshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsSnapshot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  int themeMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsSnapshot() when $default != null:
return $default(_that.themeMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  int themeMode)  $default,) {final _that = this;
switch (_that) {
case _SettingsSnapshot():
return $default(_that.themeMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  int themeMode)?  $default,) {final _that = this;
switch (_that) {
case _SettingsSnapshot() when $default != null:
return $default(_that.themeMode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsSnapshot implements SettingsSnapshot {
  const _SettingsSnapshot({@HiveField(0) this.themeMode = 0});
  factory _SettingsSnapshot.fromJson(Map<String, dynamic> json) => _$SettingsSnapshotFromJson(json);

@override@JsonKey()@HiveField(0) final  int themeMode;

/// Create a copy of SettingsSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsSnapshotCopyWith<_SettingsSnapshot> get copyWith => __$SettingsSnapshotCopyWithImpl<_SettingsSnapshot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsSnapshotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsSnapshot&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'SettingsSnapshot(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$SettingsSnapshotCopyWith<$Res> implements $SettingsSnapshotCopyWith<$Res> {
  factory _$SettingsSnapshotCopyWith(_SettingsSnapshot value, $Res Function(_SettingsSnapshot) _then) = __$SettingsSnapshotCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) int themeMode
});




}
/// @nodoc
class __$SettingsSnapshotCopyWithImpl<$Res>
    implements _$SettingsSnapshotCopyWith<$Res> {
  __$SettingsSnapshotCopyWithImpl(this._self, this._then);

  final _SettingsSnapshot _self;
  final $Res Function(_SettingsSnapshot) _then;

/// Create a copy of SettingsSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(_SettingsSnapshot(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
