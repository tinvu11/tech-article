import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/data/resource/home/articles_all_service.dart';
import 'package:flutter_article/domain/repository/home/articles_all_repo.dart';
import 'package:flutter_article/service_locator.dart';

class ArticlesAllRepoImpl extends ArticlesAllRepo {
  @override
  Future<Either> getHomeData(HomeDataRequest request) async {
    return await sl<ArticlesAllService>().getHomeData(
      request.page,
      request.limit,
    );
  }
}
