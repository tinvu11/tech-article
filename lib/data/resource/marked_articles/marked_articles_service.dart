import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:flutter_article/domain/usecase/marked_storage/marked_storage_usecase.dart';
import 'package:flutter_article/service_locator.dart';

abstract class MarkedArticlesService {
  Future<Either> getMarkedArticles();
}

class MarkedArticlesServiceImpl implements MarkedArticlesService {
  @override
  Future<Either> getMarkedArticles() async {
    print('Fetching marked articles...');
    try {
      final List<String> markedIds = await sl<GetMarkedArticlesUseCase>()
          .call();
      if (markedIds.isEmpty) {
        print('No marked articles found locally.');
        return Right([]);
      }
      print('Marked article IDs: ${markedIds.length}');
      final client = RestClient(localDio);
      final requestBody = GetByIDsRequest(ids: markedIds);

      final List<ArticleDetailEntity> response = await client.getMarkedArticles(
        requestBody,
      );
      print(
        'Marked articles fetched successfully: ${response.length} articles found.',
      );
      return Right(response);
    } catch (e) {
      print('An error occurred in getMarkedArticles: $e');
      return Left(e);
    }
  }
}
