import 'package:flutter_article/data/models/response/article_detail_response.dart';
import 'package:flutter_article/domain/models/response/home_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'articles_response.freezed.dart';
part 'articles_response.g.dart';

@freezed
abstract class ArticlesResponse with _$ArticlesResponse {
  const factory ArticlesResponse({
    required List<ArticleDetailResponse> articles,
  }) = _ArticlesResponse;

  factory ArticlesResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticlesResponseFromJson(json);
}

extension HomeDataResponseX on ArticlesResponse {
  HomeDataEntity toEntity() {
    return HomeDataEntity(
      articles: articles.map((e) => e.toEntity()).toList(),
    ); // e chính là ArticleDetailResponse
  }
}
