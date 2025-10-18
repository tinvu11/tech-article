// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadTabCategoryContent value)?  loadTabCategoryContent,TResult Function( _LoadTabHomeContent value)?  loadTabHomeContent,TResult Function( _LoadData value)?  loadData,TResult Function( _RefreshHome value)?  refreshHome,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadTabCategoryContent() when loadTabCategoryContent != null:
return loadTabCategoryContent(_that);case _LoadTabHomeContent() when loadTabHomeContent != null:
return loadTabHomeContent(_that);case _LoadData() when loadData != null:
return loadData(_that);case _RefreshHome() when refreshHome != null:
return refreshHome(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadTabCategoryContent value)  loadTabCategoryContent,required TResult Function( _LoadTabHomeContent value)  loadTabHomeContent,required TResult Function( _LoadData value)  loadData,required TResult Function( _RefreshHome value)  refreshHome,}){
final _that = this;
switch (_that) {
case _LoadTabCategoryContent():
return loadTabCategoryContent(_that);case _LoadTabHomeContent():
return loadTabHomeContent(_that);case _LoadData():
return loadData(_that);case _RefreshHome():
return refreshHome(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadTabCategoryContent value)?  loadTabCategoryContent,TResult? Function( _LoadTabHomeContent value)?  loadTabHomeContent,TResult? Function( _LoadData value)?  loadData,TResult? Function( _RefreshHome value)?  refreshHome,}){
final _that = this;
switch (_that) {
case _LoadTabCategoryContent() when loadTabCategoryContent != null:
return loadTabCategoryContent(_that);case _LoadTabHomeContent() when loadTabHomeContent != null:
return loadTabHomeContent(_that);case _LoadData() when loadData != null:
return loadData(_that);case _RefreshHome() when refreshHome != null:
return refreshHome(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  int limit,  String category)?  loadTabCategoryContent,TResult Function( int page,  int limit)?  loadTabHomeContent,TResult Function( int page,  int limit,  String? category)?  loadData,TResult Function()?  refreshHome,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadTabCategoryContent() when loadTabCategoryContent != null:
return loadTabCategoryContent(_that.page,_that.limit,_that.category);case _LoadTabHomeContent() when loadTabHomeContent != null:
return loadTabHomeContent(_that.page,_that.limit);case _LoadData() when loadData != null:
return loadData(_that.page,_that.limit,_that.category);case _RefreshHome() when refreshHome != null:
return refreshHome();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  int limit,  String category)  loadTabCategoryContent,required TResult Function( int page,  int limit)  loadTabHomeContent,required TResult Function( int page,  int limit,  String? category)  loadData,required TResult Function()  refreshHome,}) {final _that = this;
switch (_that) {
case _LoadTabCategoryContent():
return loadTabCategoryContent(_that.page,_that.limit,_that.category);case _LoadTabHomeContent():
return loadTabHomeContent(_that.page,_that.limit);case _LoadData():
return loadData(_that.page,_that.limit,_that.category);case _RefreshHome():
return refreshHome();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  int limit,  String category)?  loadTabCategoryContent,TResult? Function( int page,  int limit)?  loadTabHomeContent,TResult? Function( int page,  int limit,  String? category)?  loadData,TResult? Function()?  refreshHome,}) {final _that = this;
switch (_that) {
case _LoadTabCategoryContent() when loadTabCategoryContent != null:
return loadTabCategoryContent(_that.page,_that.limit,_that.category);case _LoadTabHomeContent() when loadTabHomeContent != null:
return loadTabHomeContent(_that.page,_that.limit);case _LoadData() when loadData != null:
return loadData(_that.page,_that.limit,_that.category);case _RefreshHome() when refreshHome != null:
return refreshHome();case _:
  return null;

}
}

}

/// @nodoc


class _LoadTabCategoryContent implements HomeEvent {
  const _LoadTabCategoryContent({required this.page, required this.limit, required this.category});
  

 final  int page;
 final  int limit;
 final  String category;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadTabCategoryContentCopyWith<_LoadTabCategoryContent> get copyWith => __$LoadTabCategoryContentCopyWithImpl<_LoadTabCategoryContent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadTabCategoryContent&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit,category);

@override
String toString() {
  return 'HomeEvent.loadTabCategoryContent(page: $page, limit: $limit, category: $category)';
}


}

/// @nodoc
abstract mixin class _$LoadTabCategoryContentCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$LoadTabCategoryContentCopyWith(_LoadTabCategoryContent value, $Res Function(_LoadTabCategoryContent) _then) = __$LoadTabCategoryContentCopyWithImpl;
@useResult
$Res call({
 int page, int limit, String category
});




}
/// @nodoc
class __$LoadTabCategoryContentCopyWithImpl<$Res>
    implements _$LoadTabCategoryContentCopyWith<$Res> {
  __$LoadTabCategoryContentCopyWithImpl(this._self, this._then);

  final _LoadTabCategoryContent _self;
  final $Res Function(_LoadTabCategoryContent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? category = null,}) {
  return _then(_LoadTabCategoryContent(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadTabHomeContent implements HomeEvent {
  const _LoadTabHomeContent({required this.page, required this.limit});
  

 final  int page;
 final  int limit;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadTabHomeContentCopyWith<_LoadTabHomeContent> get copyWith => __$LoadTabHomeContentCopyWithImpl<_LoadTabHomeContent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadTabHomeContent&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'HomeEvent.loadTabHomeContent(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$LoadTabHomeContentCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$LoadTabHomeContentCopyWith(_LoadTabHomeContent value, $Res Function(_LoadTabHomeContent) _then) = __$LoadTabHomeContentCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$LoadTabHomeContentCopyWithImpl<$Res>
    implements _$LoadTabHomeContentCopyWith<$Res> {
  __$LoadTabHomeContentCopyWithImpl(this._self, this._then);

  final _LoadTabHomeContent _self;
  final $Res Function(_LoadTabHomeContent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_LoadTabHomeContent(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadData implements HomeEvent {
  const _LoadData({required this.page, required this.limit, this.category});
  

 final  int page;
 final  int limit;
 final  String? category;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadDataCopyWith<_LoadData> get copyWith => __$LoadDataCopyWithImpl<_LoadData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadData&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit,category);

@override
String toString() {
  return 'HomeEvent.loadData(page: $page, limit: $limit, category: $category)';
}


}

/// @nodoc
abstract mixin class _$LoadDataCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$LoadDataCopyWith(_LoadData value, $Res Function(_LoadData) _then) = __$LoadDataCopyWithImpl;
@useResult
$Res call({
 int page, int limit, String? category
});




}
/// @nodoc
class __$LoadDataCopyWithImpl<$Res>
    implements _$LoadDataCopyWith<$Res> {
  __$LoadDataCopyWithImpl(this._self, this._then);

  final _LoadData _self;
  final $Res Function(_LoadData) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? category = freezed,}) {
  return _then(_LoadData(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _RefreshHome implements HomeEvent {
  const _RefreshHome();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshHome);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.refreshHome()';
}


}




/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TabContentInitial value)?  tabContentInitial,TResult Function( _TabContentLoading value)?  tabContentLoading,TResult Function( _TabContentLoaded value)?  tabContentLoaded,TResult Function( _TabContentError value)?  tabContentError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TabContentInitial() when tabContentInitial != null:
return tabContentInitial(_that);case _TabContentLoading() when tabContentLoading != null:
return tabContentLoading(_that);case _TabContentLoaded() when tabContentLoaded != null:
return tabContentLoaded(_that);case _TabContentError() when tabContentError != null:
return tabContentError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TabContentInitial value)  tabContentInitial,required TResult Function( _TabContentLoading value)  tabContentLoading,required TResult Function( _TabContentLoaded value)  tabContentLoaded,required TResult Function( _TabContentError value)  tabContentError,}){
final _that = this;
switch (_that) {
case _TabContentInitial():
return tabContentInitial(_that);case _TabContentLoading():
return tabContentLoading(_that);case _TabContentLoaded():
return tabContentLoaded(_that);case _TabContentError():
return tabContentError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TabContentInitial value)?  tabContentInitial,TResult? Function( _TabContentLoading value)?  tabContentLoading,TResult? Function( _TabContentLoaded value)?  tabContentLoaded,TResult? Function( _TabContentError value)?  tabContentError,}){
final _that = this;
switch (_that) {
case _TabContentInitial() when tabContentInitial != null:
return tabContentInitial(_that);case _TabContentLoading() when tabContentLoading != null:
return tabContentLoading(_that);case _TabContentLoaded() when tabContentLoaded != null:
return tabContentLoaded(_that);case _TabContentError() when tabContentError != null:
return tabContentError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  tabContentInitial,TResult Function()?  tabContentLoading,TResult Function( List<String> categories,  Map<String, HomeDataEntity> meta,  Map<String, bool> hasReachedMax)?  tabContentLoaded,TResult Function( String message)?  tabContentError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TabContentInitial() when tabContentInitial != null:
return tabContentInitial();case _TabContentLoading() when tabContentLoading != null:
return tabContentLoading();case _TabContentLoaded() when tabContentLoaded != null:
return tabContentLoaded(_that.categories,_that.meta,_that.hasReachedMax);case _TabContentError() when tabContentError != null:
return tabContentError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  tabContentInitial,required TResult Function()  tabContentLoading,required TResult Function( List<String> categories,  Map<String, HomeDataEntity> meta,  Map<String, bool> hasReachedMax)  tabContentLoaded,required TResult Function( String message)  tabContentError,}) {final _that = this;
switch (_that) {
case _TabContentInitial():
return tabContentInitial();case _TabContentLoading():
return tabContentLoading();case _TabContentLoaded():
return tabContentLoaded(_that.categories,_that.meta,_that.hasReachedMax);case _TabContentError():
return tabContentError(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  tabContentInitial,TResult? Function()?  tabContentLoading,TResult? Function( List<String> categories,  Map<String, HomeDataEntity> meta,  Map<String, bool> hasReachedMax)?  tabContentLoaded,TResult? Function( String message)?  tabContentError,}) {final _that = this;
switch (_that) {
case _TabContentInitial() when tabContentInitial != null:
return tabContentInitial();case _TabContentLoading() when tabContentLoading != null:
return tabContentLoading();case _TabContentLoaded() when tabContentLoaded != null:
return tabContentLoaded(_that.categories,_that.meta,_that.hasReachedMax);case _TabContentError() when tabContentError != null:
return tabContentError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _TabContentInitial implements HomeState {
  const _TabContentInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabContentInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.tabContentInitial()';
}


}




/// @nodoc


class _TabContentLoading implements HomeState {
  const _TabContentLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabContentLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.tabContentLoading()';
}


}




/// @nodoc


class _TabContentLoaded implements HomeState {
  const _TabContentLoaded({required final  List<String> categories, required final  Map<String, HomeDataEntity> meta, required final  Map<String, bool> hasReachedMax}): _categories = categories,_meta = meta,_hasReachedMax = hasReachedMax;
  

 final  List<String> _categories;
 List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  Map<String, HomeDataEntity> _meta;
 Map<String, HomeDataEntity> get meta {
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_meta);
}

 final  Map<String, bool> _hasReachedMax;
 Map<String, bool> get hasReachedMax {
  if (_hasReachedMax is EqualUnmodifiableMapView) return _hasReachedMax;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_hasReachedMax);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabContentLoadedCopyWith<_TabContentLoaded> get copyWith => __$TabContentLoadedCopyWithImpl<_TabContentLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabContentLoaded&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._meta, _meta)&&const DeepCollectionEquality().equals(other._hasReachedMax, _hasReachedMax));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_meta),const DeepCollectionEquality().hash(_hasReachedMax));

@override
String toString() {
  return 'HomeState.tabContentLoaded(categories: $categories, meta: $meta, hasReachedMax: $hasReachedMax)';
}


}

/// @nodoc
abstract mixin class _$TabContentLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$TabContentLoadedCopyWith(_TabContentLoaded value, $Res Function(_TabContentLoaded) _then) = __$TabContentLoadedCopyWithImpl;
@useResult
$Res call({
 List<String> categories, Map<String, HomeDataEntity> meta, Map<String, bool> hasReachedMax
});




}
/// @nodoc
class __$TabContentLoadedCopyWithImpl<$Res>
    implements _$TabContentLoadedCopyWith<$Res> {
  __$TabContentLoadedCopyWithImpl(this._self, this._then);

  final _TabContentLoaded _self;
  final $Res Function(_TabContentLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? meta = null,Object? hasReachedMax = null,}) {
  return _then(_TabContentLoaded(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,meta: null == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, HomeDataEntity>,hasReachedMax: null == hasReachedMax ? _self._hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}


}

/// @nodoc


class _TabContentError implements HomeState {
  const _TabContentError({required this.message});
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabContentErrorCopyWith<_TabContentError> get copyWith => __$TabContentErrorCopyWithImpl<_TabContentError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabContentError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.tabContentError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$TabContentErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$TabContentErrorCopyWith(_TabContentError value, $Res Function(_TabContentError) _then) = __$TabContentErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$TabContentErrorCopyWithImpl<$Res>
    implements _$TabContentErrorCopyWith<$Res> {
  __$TabContentErrorCopyWithImpl(this._self, this._then);

  final _TabContentError _self;
  final $Res Function(_TabContentError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_TabContentError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
