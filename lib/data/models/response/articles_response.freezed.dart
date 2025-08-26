// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticlesResponse {

 List<ArticleDetailResponse> get articles;
/// Create a copy of ArticlesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesResponseCopyWith<ArticlesResponse> get copyWith => _$ArticlesResponseCopyWithImpl<ArticlesResponse>(this as ArticlesResponse, _$identity);

  /// Serializes this ArticlesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticlesResponse&&const DeepCollectionEquality().equals(other.articles, articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(articles));

@override
String toString() {
  return 'ArticlesResponse(articles: $articles)';
}


}

/// @nodoc
abstract mixin class $ArticlesResponseCopyWith<$Res>  {
  factory $ArticlesResponseCopyWith(ArticlesResponse value, $Res Function(ArticlesResponse) _then) = _$ArticlesResponseCopyWithImpl;
@useResult
$Res call({
 List<ArticleDetailResponse> articles
});




}
/// @nodoc
class _$ArticlesResponseCopyWithImpl<$Res>
    implements $ArticlesResponseCopyWith<$Res> {
  _$ArticlesResponseCopyWithImpl(this._self, this._then);

  final ArticlesResponse _self;
  final $Res Function(ArticlesResponse) _then;

/// Create a copy of ArticlesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articles = null,}) {
  return _then(_self.copyWith(
articles: null == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleDetailResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticlesResponse].
extension ArticlesResponsePatterns on ArticlesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticlesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticlesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticlesResponse value)  $default,){
final _that = this;
switch (_that) {
case _ArticlesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticlesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ArticlesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ArticleDetailResponse> articles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticlesResponse() when $default != null:
return $default(_that.articles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ArticleDetailResponse> articles)  $default,) {final _that = this;
switch (_that) {
case _ArticlesResponse():
return $default(_that.articles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ArticleDetailResponse> articles)?  $default,) {final _that = this;
switch (_that) {
case _ArticlesResponse() when $default != null:
return $default(_that.articles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticlesResponse implements ArticlesResponse {
  const _ArticlesResponse({required final  List<ArticleDetailResponse> articles}): _articles = articles;
  factory _ArticlesResponse.fromJson(Map<String, dynamic> json) => _$ArticlesResponseFromJson(json);

 final  List<ArticleDetailResponse> _articles;
@override List<ArticleDetailResponse> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}


/// Create a copy of ArticlesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesResponseCopyWith<_ArticlesResponse> get copyWith => __$ArticlesResponseCopyWithImpl<_ArticlesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticlesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesResponse&&const DeepCollectionEquality().equals(other._articles, _articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'ArticlesResponse(articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$ArticlesResponseCopyWith<$Res> implements $ArticlesResponseCopyWith<$Res> {
  factory _$ArticlesResponseCopyWith(_ArticlesResponse value, $Res Function(_ArticlesResponse) _then) = __$ArticlesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ArticleDetailResponse> articles
});




}
/// @nodoc
class __$ArticlesResponseCopyWithImpl<$Res>
    implements _$ArticlesResponseCopyWith<$Res> {
  __$ArticlesResponseCopyWithImpl(this._self, this._then);

  final _ArticlesResponse _self;
  final $Res Function(_ArticlesResponse) _then;

/// Create a copy of ArticlesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articles = null,}) {
  return _then(_ArticlesResponse(
articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleDetailResponse>,
  ));
}


}

// dart format on
