import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';

abstract class ArticlesCategoryRepo {
  Future<Either> getDataByCategory(HomeDataRequest request);
}
