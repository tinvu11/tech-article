import 'package:flutter_article/domain/models/response/article_detail.dart';

class HomeDataEntity {
  final List<ArticleDetailEntity> articles;

  HomeDataEntity({required this.articles});

  void addArticle(List<ArticleDetailEntity> article) {
    articles.addAll(article);
  }
}
