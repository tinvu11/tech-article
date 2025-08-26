// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarkScreenEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkScreenEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkScreenEvent()';
}


}

/// @nodoc
class $MarkScreenEventCopyWith<$Res>  {
$MarkScreenEventCopyWith(MarkScreenEvent _, $Res Function(MarkScreenEvent) __);
}


/// Adds pattern-matching-related methods to [MarkScreenEvent].
extension MarkScreenEventPatterns on MarkScreenEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadMarks value)?  bookMarksLoad,TResult Function( _ToggleMark value)?  toggleMark,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadMarks() when bookMarksLoad != null:
return bookMarksLoad(_that);case _ToggleMark() when toggleMark != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadMarks value)  bookMarksLoad,required TResult Function( _ToggleMark value)  toggleMark,}){
final _that = this;
switch (_that) {
case _LoadMarks():
return bookMarksLoad(_that);case _ToggleMark():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadMarks value)?  bookMarksLoad,TResult? Function( _ToggleMark value)?  toggleMark,}){
final _that = this;
switch (_that) {
case _LoadMarks() when bookMarksLoad != null:
return bookMarksLoad(_that);case _ToggleMark() when toggleMark != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  bookMarksLoad,TResult Function( String idArticle)?  toggleMark,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadMarks() when bookMarksLoad != null:
return bookMarksLoad();case _ToggleMark() when toggleMark != null:
return toggleMark(_that.idArticle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  bookMarksLoad,required TResult Function( String idArticle)  toggleMark,}) {final _that = this;
switch (_that) {
case _LoadMarks():
return bookMarksLoad();case _ToggleMark():
return toggleMark(_that.idArticle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  bookMarksLoad,TResult? Function( String idArticle)?  toggleMark,}) {final _that = this;
switch (_that) {
case _LoadMarks() when bookMarksLoad != null:
return bookMarksLoad();case _ToggleMark() when toggleMark != null:
return toggleMark(_that.idArticle);case _:
  return null;

}
}

}

/// @nodoc


class _LoadMarks implements MarkScreenEvent {
  const _LoadMarks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMarks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkScreenEvent.bookMarksLoad()';
}


}




/// @nodoc


class _ToggleMark implements MarkScreenEvent {
  const _ToggleMark({required this.idArticle});
  

 final  String idArticle;

/// Create a copy of MarkScreenEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleMarkCopyWith<_ToggleMark> get copyWith => __$ToggleMarkCopyWithImpl<_ToggleMark>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleMark&&(identical(other.idArticle, idArticle) || other.idArticle == idArticle));
}


@override
int get hashCode => Object.hash(runtimeType,idArticle);

@override
String toString() {
  return 'MarkScreenEvent.toggleMark(idArticle: $idArticle)';
}


}

/// @nodoc
abstract mixin class _$ToggleMarkCopyWith<$Res> implements $MarkScreenEventCopyWith<$Res> {
  factory _$ToggleMarkCopyWith(_ToggleMark value, $Res Function(_ToggleMark) _then) = __$ToggleMarkCopyWithImpl;
@useResult
$Res call({
 String idArticle
});




}
/// @nodoc
class __$ToggleMarkCopyWithImpl<$Res>
    implements _$ToggleMarkCopyWith<$Res> {
  __$ToggleMarkCopyWithImpl(this._self, this._then);

  final _ToggleMark _self;
  final $Res Function(_ToggleMark) _then;

/// Create a copy of MarkScreenEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idArticle = null,}) {
  return _then(_ToggleMark(
idArticle: null == idArticle ? _self.idArticle : idArticle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MarkScreenState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkScreenState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkScreenState()';
}


}

/// @nodoc
class $MarkScreenStateCopyWith<$Res>  {
$MarkScreenStateCopyWith(MarkScreenState _, $Res Function(MarkScreenState) __);
}


/// Adds pattern-matching-related methods to [MarkScreenState].
extension MarkScreenStatePatterns on MarkScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MarksInitial value)?  initial,TResult Function( _MarksLoaded value)?  loaded,TResult Function( _MarksError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarksInitial() when initial != null:
return initial(_that);case _MarksLoaded() when loaded != null:
return loaded(_that);case _MarksError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MarksInitial value)  initial,required TResult Function( _MarksLoaded value)  loaded,required TResult Function( _MarksError value)  error,}){
final _that = this;
switch (_that) {
case _MarksInitial():
return initial(_that);case _MarksLoaded():
return loaded(_that);case _MarksError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MarksInitial value)?  initial,TResult? Function( _MarksLoaded value)?  loaded,TResult? Function( _MarksError value)?  error,}){
final _that = this;
switch (_that) {
case _MarksInitial() when initial != null:
return initial(_that);case _MarksLoaded() when loaded != null:
return loaded(_that);case _MarksError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<String> idArticles,  List<ArticleDetailEntity> articles)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarksInitial() when initial != null:
return initial();case _MarksLoaded() when loaded != null:
return loaded(_that.idArticles,_that.articles);case _MarksError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<String> idArticles,  List<ArticleDetailEntity> articles)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _MarksInitial():
return initial();case _MarksLoaded():
return loaded(_that.idArticles,_that.articles);case _MarksError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<String> idArticles,  List<ArticleDetailEntity> articles)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _MarksInitial() when initial != null:
return initial();case _MarksLoaded() when loaded != null:
return loaded(_that.idArticles,_that.articles);case _MarksError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _MarksInitial implements MarkScreenState {
  const _MarksInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarksInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkScreenState.initial()';
}


}




/// @nodoc


class _MarksLoaded implements MarkScreenState {
  const _MarksLoaded({required final  List<String> idArticles, required final  List<ArticleDetailEntity> articles}): _idArticles = idArticles,_articles = articles;
  

 final  List<String> _idArticles;
 List<String> get idArticles {
  if (_idArticles is EqualUnmodifiableListView) return _idArticles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idArticles);
}

 final  List<ArticleDetailEntity> _articles;
 List<ArticleDetailEntity> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}


/// Create a copy of MarkScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarksLoadedCopyWith<_MarksLoaded> get copyWith => __$MarksLoadedCopyWithImpl<_MarksLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarksLoaded&&const DeepCollectionEquality().equals(other._idArticles, _idArticles)&&const DeepCollectionEquality().equals(other._articles, _articles));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_idArticles),const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'MarkScreenState.loaded(idArticles: $idArticles, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$MarksLoadedCopyWith<$Res> implements $MarkScreenStateCopyWith<$Res> {
  factory _$MarksLoadedCopyWith(_MarksLoaded value, $Res Function(_MarksLoaded) _then) = __$MarksLoadedCopyWithImpl;
@useResult
$Res call({
 List<String> idArticles, List<ArticleDetailEntity> articles
});




}
/// @nodoc
class __$MarksLoadedCopyWithImpl<$Res>
    implements _$MarksLoadedCopyWith<$Res> {
  __$MarksLoadedCopyWithImpl(this._self, this._then);

  final _MarksLoaded _self;
  final $Res Function(_MarksLoaded) _then;

/// Create a copy of MarkScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idArticles = null,Object? articles = null,}) {
  return _then(_MarksLoaded(
idArticles: null == idArticles ? _self._idArticles : idArticles // ignore: cast_nullable_to_non_nullable
as List<String>,articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleDetailEntity>,
  ));
}


}

/// @nodoc


class _MarksError implements MarkScreenState {
  const _MarksError({required this.message});
  

 final  String message;

/// Create a copy of MarkScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarksErrorCopyWith<_MarksError> get copyWith => __$MarksErrorCopyWithImpl<_MarksError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarksError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MarkScreenState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$MarksErrorCopyWith<$Res> implements $MarkScreenStateCopyWith<$Res> {
  factory _$MarksErrorCopyWith(_MarksError value, $Res Function(_MarksError) _then) = __$MarksErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$MarksErrorCopyWithImpl<$Res>
    implements _$MarksErrorCopyWith<$Res> {
  __$MarksErrorCopyWithImpl(this._self, this._then);

  final _MarksError _self;
  final $Res Function(_MarksError) _then;

/// Create a copy of MarkScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_MarksError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
