import 'package:flutter_article/domain/models/response/article_detail.dart';

class HomeDataEntity {
  final List<ArticleDetailEntity> articles;

  HomeDataEntity({required this.articles});

  // void addArticle(List<ArticleDetailEntity> article) {
  //   articles.addAll(article);
  // }
}
// import 'package:flutter_article/domain/models/response/article_detail.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'home_data_entity.freezed.dart';

// @freezed
// abstract class HomeDataEntity with _$HomeDataEntity {
//   // Dùng const factory, freezed sẽ tự động tạo:
//   // 1. Constructor bất biến
//   // 2. Hàm copyWith
//   // 3. Hàm toString, ==, hashCode
//   const factory HomeDataEntity({required List<ArticleDetailEntity> articles}) =
//       _HomeDataEntity;
// }
