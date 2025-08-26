import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/data/models/response/articles_response.dart';
import 'package:flutter_article/service_locator.dart';

abstract class ArticlesCategoryService {
  Future<Either> getArticlesByCategory(HomeDataRequest request);
}

class ArticlesCategoryServiceImpl implements ArticlesCategoryService {
  @override
  Future<Either> getArticlesByCategory(HomeDataRequest request) async {
    try {
      final client = RestClient(localDio);
      final ArticlesResponse response = await client.getArticlesByCategory(
        request,
      );
      return right(response.toEntity());
    } catch (e) {
      return Left('An error occurred while fetching articles by category: $e');
    }
  }
}
