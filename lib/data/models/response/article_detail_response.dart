import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_detail_response.g.dart';
part 'article_detail_response.freezed.dart';

@freezed
abstract class ArticleDetailResponse with _$ArticleDetailResponse {
  const factory ArticleDetailResponse({
    required String id,
    required String title,
    required String url,
    required String image,
    required String src,
    required String content,
    required String author,
    required String time,
  }) = _ArticleDetailResponse;

  factory ArticleDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailResponseFromJson(json);
}

// chuyển từ Response model sang Domain Entity
// final listResponse = <ArticleDetailResponse>[...];
// final listEntity = listResponse.toEntities();
extension ArticleDetailResponseX on ArticleDetailResponse {
  ArticleDetailEntity toEntity() {
    return ArticleDetailEntity(
      id: id,
      title: title,
      url: url,
      image: image,
      src: src,
      content: content,
      author: author,
      time: time,
    );
  }
}

extension ListArticleDetailResponseX on List<ArticleDetailResponse>? {
  List<ArticleDetailEntity> toEntities() {
    return this?.map((e) => e.toEntity()).toList() ?? [];
  }
}
