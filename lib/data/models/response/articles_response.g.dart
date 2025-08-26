// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticlesResponse _$ArticlesResponseFromJson(Map<String, dynamic> json) =>
    _ArticlesResponse(
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleDetailResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticlesResponseToJson(_ArticlesResponse instance) =>
    <String, dynamic>{'articles': instance.articles};
