import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/data/resource/home/articles_category_service.dart';
import 'package:flutter_article/domain/repository/home/articles_category_repo.dart';
import 'package:flutter_article/service_locator.dart';

class ArticlesCategoryRepoImpl extends ArticlesCategoryRepo {
  @override
  Future<Either> getDataByCategory(HomeDataRequest request) async {
    return await sl<ArticlesCategoryService>().getArticlesByCategory(request);
  }
}
