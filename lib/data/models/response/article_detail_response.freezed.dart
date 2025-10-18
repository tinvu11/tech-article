// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticleDetailResponse {

 String get id; String get title; String get url; String get image; String get src; String get content; String get author; String get time;
/// Create a copy of ArticleDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleDetailResponseCopyWith<ArticleDetailResponse> get copyWith => _$ArticleDetailResponseCopyWithImpl<ArticleDetailResponse>(this as ArticleDetailResponse, _$identity);

  /// Serializes this ArticleDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleDetailResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.image, image) || other.image == image)&&(identical(other.src, src) || other.src == src)&&(identical(other.content, content) || other.content == content)&&(identical(other.author, author) || other.author == author)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,url,image,src,content,author,time);

@override
String toString() {
  return 'ArticleDetailResponse(id: $id, title: $title, url: $url, image: $image, src: $src, content: $content, author: $author, time: $time)';
}


}

/// @nodoc
abstract mixin class $ArticleDetailResponseCopyWith<$Res>  {
  factory $ArticleDetailResponseCopyWith(ArticleDetailResponse value, $Res Function(ArticleDetailResponse) _then) = _$ArticleDetailResponseCopyWithImpl;
@useResult
$Res call({
 String id, String title, String url, String image, String src, String content, String author, String time
});




}
/// @nodoc
class _$ArticleDetailResponseCopyWithImpl<$Res>
    implements $ArticleDetailResponseCopyWith<$Res> {
  _$ArticleDetailResponseCopyWithImpl(this._self, this._then);

  final ArticleDetailResponse _self;
  final $Res Function(ArticleDetailResponse) _then;

/// Create a copy of ArticleDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? url = null,Object? image = null,Object? src = null,Object? content = null,Object? author = null,Object? time = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,src: null == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticleDetailResponse].
extension ArticleDetailResponsePatterns on ArticleDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticleDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticleDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticleDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticleDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ArticleDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String url,  String image,  String src,  String content,  String author,  String time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticleDetailResponse() when $default != null:
return $default(_that.id,_that.title,_that.url,_that.image,_that.src,_that.content,_that.author,_that.time);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String url,  String image,  String src,  String content,  String author,  String time)  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailResponse():
return $default(_that.id,_that.title,_that.url,_that.image,_that.src,_that.content,_that.author,_that.time);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String url,  String image,  String src,  String content,  String author,  String time)?  $default,) {final _that = this;
switch (_that) {
case _ArticleDetailResponse() when $default != null:
return $default(_that.id,_that.title,_that.url,_that.image,_that.src,_that.content,_that.author,_that.time);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticleDetailResponse implements ArticleDetailResponse {
  const _ArticleDetailResponse({required this.id, required this.title, required this.url, required this.image, required this.src, required this.content, required this.author, required this.time});
  factory _ArticleDetailResponse.fromJson(Map<String, dynamic> json) => _$ArticleDetailResponseFromJson(json);

@override final  String id;
@override final  String title;
@override final  String url;
@override final  String image;
@override final  String src;
@override final  String content;
@override final  String author;
@override final  String time;

/// Create a copy of ArticleDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleDetailResponseCopyWith<_ArticleDetailResponse> get copyWith => __$ArticleDetailResponseCopyWithImpl<_ArticleDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleDetailResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url)&&(identical(other.image, image) || other.image == image)&&(identical(other.src, src) || other.src == src)&&(identical(other.content, content) || other.content == content)&&(identical(other.author, author) || other.author == author)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,url,image,src,content,author,time);

@override
String toString() {
  return 'ArticleDetailResponse(id: $id, title: $title, url: $url, image: $image, src: $src, content: $content, author: $author, time: $time)';
}


}

/// @nodoc
abstract mixin class _$ArticleDetailResponseCopyWith<$Res> implements $ArticleDetailResponseCopyWith<$Res> {
  factory _$ArticleDetailResponseCopyWith(_ArticleDetailResponse value, $Res Function(_ArticleDetailResponse) _then) = __$ArticleDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String url, String image, String src, String content, String author, String time
});




}
/// @nodoc
class __$ArticleDetailResponseCopyWithImpl<$Res>
    implements _$ArticleDetailResponseCopyWith<$Res> {
  __$ArticleDetailResponseCopyWithImpl(this._self, this._then);

  final _ArticleDetailResponse _self;
  final $Res Function(_ArticleDetailResponse) _then;

/// Create a copy of ArticleDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? url = null,Object? image = null,Object? src = null,Object? content = null,Object? author = null,Object? time = null,}) {
  return _then(_ArticleDetailResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,src: null == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
