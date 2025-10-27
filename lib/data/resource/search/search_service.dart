import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/data/models/response/article_detail_response.dart';
import 'package:flutter_article/service_locator.dart';

abstract class SearchService {
  Future<Either> searchArticles(String query);
}

class SearchServiceImpl implements SearchService {
  @override
  Future<Either> searchArticles(String query) async {
    try {
      final client = RestClient(localDio);
      final requestBody = SearchRequest(query: query);
      final List<ArticleDetailResponse> response = await client.searchArticles(
        requestBody,
      );
      return Right(response.toEntities());
    } catch (e) {
      return Left(e);
    }
  }
}
