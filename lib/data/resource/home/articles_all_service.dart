import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/data/models/response/articles_response.dart';
import 'package:flutter_article/service_locator.dart';

abstract class ArticlesAllService {
  Future<Either> getHomeData(int page, int limit);
}

class ArticlesAllServiceImpl extends ArticlesAllService {
  @override
  Future<Either> getHomeData(int page, int limit) async {
    try {
      final client = RestClient(localDio);
      final ArticlesResponse homeData = await client.getHomeData(
        HomeDataRequest(page: page, limit: limit),
      );
      return right(homeData.toEntity());
    } catch (e) {
      return const Left('An error occurred in getHomeData, Please try again.');
    }
  }
}
