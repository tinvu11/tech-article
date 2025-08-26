// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Article _$ArticleFromJson(Map<String, dynamic> json) => _Article(
  id: json['id'] as String,
  url: json['url'] as String,
  src: json['src'] as String,
  title: json['title'] as String,
  author: json['author'] as String,
  content: json['content'] as String,
  imageUrl: json['imageUrl'] as String,
  time: json['time'] as String,
);

Map<String, dynamic> _$ArticleToJson(_Article instance) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'src': instance.src,
  'title': instance.title,
  'author': instance.author,
  'content': instance.content,
  'imageUrl': instance.imageUrl,
  'time': instance.time,
};
