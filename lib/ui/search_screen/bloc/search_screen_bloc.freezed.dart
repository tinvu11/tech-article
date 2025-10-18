// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchScreenState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchScreenState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchScreenState()';
}


}

/// @nodoc
class $SearchScreenStateCopyWith<$Res>  {
$SearchScreenStateCopyWith(SearchScreenState _, $Res Function(SearchScreenState) __);
}


/// Adds pattern-matching-related methods to [SearchScreenState].
extension SearchScreenStatePatterns on SearchScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ArticleDetailEntity> articles,  List<String> idListMarked)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.articles,_that.idListMarked);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ArticleDetailEntity> articles,  List<String> idListMarked)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.articles,_that.idListMarked);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ArticleDetailEntity> articles,  List<String> idListMarked)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.articles,_that.idListMarked);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SearchScreenState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchScreenState.initial()';
}


}




/// @nodoc


class _Loading implements SearchScreenState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchScreenState.loading()';
}


}




/// @nodoc


class _Loaded implements SearchScreenState {
  const _Loaded({required final  List<ArticleDetailEntity> articles, required final  List<String> idListMarked}): _articles = articles,_idListMarked = idListMarked;
  

 final  List<ArticleDetailEntity> _articles;
 List<ArticleDetailEntity> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}

 final  List<String> _idListMarked;
 List<String> get idListMarked {
  if (_idListMarked is EqualUnmodifiableListView) return _idListMarked;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idListMarked);
}


/// Create a copy of SearchScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._articles, _articles)&&const DeepCollectionEquality().equals(other._idListMarked, _idListMarked));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_articles),const DeepCollectionEquality().hash(_idListMarked));

@override
String toString() {
  return 'SearchScreenState.loaded(articles: $articles, idListMarked: $idListMarked)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $SearchScreenStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<ArticleDetailEntity> articles, List<String> idListMarked
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of SearchScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? articles = null,Object? idListMarked = null,}) {
  return _then(_Loaded(
articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleDetailEntity>,idListMarked: null == idListMarked ? _self._idListMarked : idListMarked // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _Error implements SearchScreenState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of SearchScreenState
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
  return 'SearchScreenState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SearchScreenStateCopyWith<$Res> {
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

/// Create a copy of SearchScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchScreenEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchScreenEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchScreenEvent()';
}


}

/// @nodoc
class $SearchScreenEventCopyWith<$Res>  {
$SearchScreenEventCopyWith(SearchScreenEvent _, $Res Function(SearchScreenEvent) __);
}


/// Adds pattern-matching-related methods to [SearchScreenEvent].
extension SearchScreenEventPatterns on SearchScreenEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Search value)?  search,TResult Function( _ToggleMark value)?  toggleMark,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that);case _ToggleMark() when toggleMark != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Search value)  search,required TResult Function( _ToggleMark value)  toggleMark,}){
final _that = this;
switch (_that) {
case _Search():
return search(_that);case _ToggleMark():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Search value)?  search,TResult? Function( _ToggleMark value)?  toggleMark,}){
final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that);case _ToggleMark() when toggleMark != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  search,TResult Function( String idArticle)?  toggleMark,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that.query);case _ToggleMark() when toggleMark != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  search,required TResult Function( String idArticle)  toggleMark,}) {final _that = this;
switch (_that) {
case _Search():
return search(_that.query);case _ToggleMark():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  search,TResult? Function( String idArticle)?  toggleMark,}) {final _that = this;
switch (_that) {
case _Search() when search != null:
return search(_that.query);case _ToggleMark() when toggleMark != null:
return toggleMark(_that.idArticle);case _:
  return null;

}
}

}

/// @nodoc


class _Search implements SearchScreenEvent {
  const _Search({required this.query});
  

 final  String query;

/// Create a copy of SearchScreenEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchCopyWith<_Search> get copyWith => __$SearchCopyWithImpl<_Search>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Search&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchScreenEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res> implements $SearchScreenEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) _then) = __$SearchCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

/// Create a copy of SearchScreenEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_Search(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ToggleMark implements SearchScreenEvent {
  const _ToggleMark({required this.idArticle});
  

 final  String idArticle;

/// Create a copy of SearchScreenEvent
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
  return 'SearchScreenEvent.toggleMark(idArticle: $idArticle)';
}


}

/// @nodoc
abstract mixin class _$ToggleMarkCopyWith<$Res> implements $SearchScreenEventCopyWith<$Res> {
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

/// Create a copy of SearchScreenEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idArticle = null,}) {
  return _then(_ToggleMark(
idArticle: null == idArticle ? _self.idArticle : idArticle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
