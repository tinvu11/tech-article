// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) =>
    _CategoriesResponse(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$CategoriesResponseToJson(_CategoriesResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'count': instance.count,
    };
