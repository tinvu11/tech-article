import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/data/models/response/article_detail_response.dart';
import 'package:flutter_article/domain/usecase/marked_storage/marked_storage_usecase.dart';
import 'package:flutter_article/service_locator.dart';

abstract class MarkedArticlesService {
  Future<Either> getMarkedArticles();
}

class MarkedArticlesServiceImpl implements MarkedArticlesService {
  @override
  Future<Either> getMarkedArticles() async {
    try {
      final List<String> markedIds = await sl<GetMarkedArticlesUseCase>()
          .call();
      if (markedIds.isEmpty) {
        return Right([]);
      }
      final client = RestClient(localDio);
      final requestBody = GetByIDsRequest(ids: markedIds);

      final List<ArticleDetailResponse> response = await client
          .getMarkedArticles(requestBody);

      return Right(response.toEntities());
    } catch (e) {
      return Left(e);
    }
  }
}
