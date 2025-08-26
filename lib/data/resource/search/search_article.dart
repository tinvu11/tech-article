import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:flutter_article/service_locator.dart';

abstract class SearchArticleService {
  Future<Either> searchArticles(String query);
}

class SearchArticleServiceImpl implements SearchArticleService {
  @override
  Future<Either> searchArticles(String query) async {
    try {
      final client = RestClient(localDio);
      final requestBody = SearchRequest(query: query);
      final List<ArticleDetailEntity> response = await client.searchArticles(
        requestBody,
      );
      return Right(response);
    } catch (e) {
      return Left(e);
    }
  }
}
