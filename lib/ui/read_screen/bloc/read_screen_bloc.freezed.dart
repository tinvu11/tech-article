// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReadScreenEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadScreenEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReadScreenEvent()';
}


}

/// @nodoc
class $ReadScreenEventCopyWith<$Res>  {
$ReadScreenEventCopyWith(ReadScreenEvent _, $Res Function(ReadScreenEvent) __);
}


/// Adds pattern-matching-related methods to [ReadScreenEvent].
extension ReadScreenEventPatterns on ReadScreenEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OpenScreen value)?  openScreen,TResult Function( _ToggleMark value)?  toggleMark,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenScreen() when openScreen != null:
return openScreen(_that);case _ToggleMark() when toggleMark != null:
return toggleMark(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OpenScreen value)  openScreen,required TResult Function( _ToggleMark value)  toggleMark,}){
final _that = this;
switch (_that) {
case _OpenScreen():
return openScreen(_that);case _ToggleMark():
return toggleMark(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OpenScreen value)?  openScreen,TResult? Function( _ToggleMark value)?  toggleMark,}){
final _that = this;
switch (_that) {
case _OpenScreen() when openScreen != null:
return openScreen(_that);case _ToggleMark() when toggleMark != null:
return toggleMark(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String idArticle)?  openScreen,TResult Function( String articleID)?  toggleMark,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenScreen() when openScreen != null:
return openScreen(_that.idArticle);case _ToggleMark() when toggleMark != null:
return toggleMark(_that.articleID);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String idArticle)  openScreen,required TResult Function( String articleID)  toggleMark,}) {final _that = this;
switch (_that) {
case _OpenScreen():
return openScreen(_that.idArticle);case _ToggleMark():
return toggleMark(_that.articleID);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String idArticle)?  openScreen,TResult? Function( String articleID)?  toggleMark,}) {final _that = this;
switch (_that) {
case _OpenScreen() when openScreen != null:
return openScreen(_that.idArticle);case _ToggleMark() when toggleMark != null:
return toggleMark(_that.articleID);case _:
  return null;

}
}

}

/// @nodoc


class _OpenScreen implements ReadScreenEvent {
  const _OpenScreen({required this.idArticle});
  

 final  String idArticle;

/// Create a copy of ReadScreenEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenScreenCopyWith<_OpenScreen> get copyWith => __$OpenScreenCopyWithImpl<_OpenScreen>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenScreen&&(identical(other.idArticle, idArticle) || other.idArticle == idArticle));
}


@override
int get hashCode => Object.hash(runtimeType,idArticle);

@override
String toString() {
  return 'ReadScreenEvent.openScreen(idArticle: $idArticle)';
}


}

/// @nodoc
abstract mixin class _$OpenScreenCopyWith<$Res> implements $ReadScreenEventCopyWith<$Res> {
  factory _$OpenScreenCopyWith(_OpenScreen value, $Res Function(_OpenScreen) _then) = __$OpenScreenCopyWithImpl;
@useResult
$Res call({
 String idArticle
});




}
/// @nodoc
class __$OpenScreenCopyWithImpl<$Res>
    implements _$OpenScreenCopyWith<$Res> {
  __$OpenScreenCopyWithImpl(this._self, this._then);

  final _OpenScreen _self;
  final $Res Function(_OpenScreen) _then;

/// Create a copy of ReadScreenEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idArticle = null,}) {
  return _then(_OpenScreen(
idArticle: null == idArticle ? _self.idArticle : idArticle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ToggleMark implements ReadScreenEvent {
  const _ToggleMark({required this.articleID});
  

 final  String articleID;

/// Create a copy of ReadScreenEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleMarkCopyWith<_ToggleMark> get copyWith => __$ToggleMarkCopyWithImpl<_ToggleMark>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleMark&&(identical(other.articleID, articleID) || other.articleID == articleID));
}


@override
int get hashCode => Object.hash(runtimeType,articleID);

@override
String toString() {
  return 'ReadScreenEvent.toggleMark(articleID: $articleID)';
}


}

/// @nodoc
abstract mixin class _$ToggleMarkCopyWith<$Res> implements $ReadScreenEventCopyWith<$Res> {
  factory _$ToggleMarkCopyWith(_ToggleMark value, $Res Function(_ToggleMark) _then) = __$ToggleMarkCopyWithImpl;
@useResult
$Res call({
 String articleID
});




}
/// @nodoc
class __$ToggleMarkCopyWithImpl<$Res>
    implements _$ToggleMarkCopyWith<$Res> {
  __$ToggleMarkCopyWithImpl(this._self, this._then);

  final _ToggleMark _self;
  final $Res Function(_ToggleMark) _then;

/// Create a copy of ReadScreenEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? articleID = null,}) {
  return _then(_ToggleMark(
articleID: null == articleID ? _self.articleID : articleID // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ReadScreenState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadScreenState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReadScreenState()';
}


}

/// @nodoc
class $ReadScreenStateCopyWith<$Res>  {
$ReadScreenStateCopyWith(ReadScreenState _, $Res Function(ReadScreenState) __);
}


/// Adds pattern-matching-related methods to [ReadScreenState].
extension ReadScreenStatePatterns on ReadScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isMarked)?  initial,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.isMarked);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isMarked)  initial,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.isMarked);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isMarked)?  initial,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.isMarked);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ReadScreenState {
  const _Initial({this.isMarked = false});
  

@JsonKey() final  bool isMarked;

/// Create a copy of ReadScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.isMarked, isMarked) || other.isMarked == isMarked));
}


@override
int get hashCode => Object.hash(runtimeType,isMarked);

@override
String toString() {
  return 'ReadScreenState.initial(isMarked: $isMarked)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $ReadScreenStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@useResult
$Res call({
 bool isMarked
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of ReadScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isMarked = null,}) {
  return _then(_Initial(
isMarked: null == isMarked ? _self.isMarked : isMarked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements ReadScreenState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of ReadScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReadScreenState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ReadScreenStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ReadScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
