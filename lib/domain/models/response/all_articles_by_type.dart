import 'package:flutter_article/domain/models/response/article_detail.dart';

class AllArticlesEntity {
  final List<ArticleDetailEntity> hardware;
  final List<ArticleDetailEntity> games;
  final List<ArticleDetailEntity> mobile;
  final List<ArticleDetailEntity> finance;
  final List<ArticleDetailEntity> review;
  final List<ArticleDetailEntity> deals;

  AllArticlesEntity({
    required this.hardware,
    required this.games,
    required this.mobile,
    required this.finance,
    required this.review,
    required this.deals,
  });
  @override
  String toString() {
    return 'AllCategoryByType{hardware: ${hardware.map((article) => article.toString()).join(", ")}, '
        'gaming: ${games.map((article) => article.toString()).join(", ")}, '
        'mobile: ${mobile.map((article) => article.toString()).join(", ")}, '
        'finance: ${finance.map((article) => article.toString()).join(", ")}, '
        'review: ${review.map((article) => article.toString()).join(", ")}, '
        'deals: ${deals.map((article) => article.toString()).join(", ")}} ';
  }
}
