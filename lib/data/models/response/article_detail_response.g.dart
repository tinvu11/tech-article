// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticleDetailResponse _$ArticleDetailResponseFromJson(
  Map<String, dynamic> json,
) => _ArticleDetailResponse(
  id: json['id'] as String,
  title: json['title'] as String,
  url: json['url'] as String,
  image: json['image'] as String,
  src: json['src'] as String,
  content: json['content'] as String,
  author: json['author'] as String,
  time: json['time'] as String,
);

Map<String, dynamic> _$ArticleDetailResponseToJson(
  _ArticleDetailResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'url': instance.url,
  'image': instance.image,
  'src': instance.src,
  'content': instance.content,
  'author': instance.author,
  'time': instance.time,
};
