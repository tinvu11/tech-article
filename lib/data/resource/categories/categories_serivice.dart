import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/data/models/response/categories_response.dart';
import 'package:flutter_article/service_locator.dart';

abstract class CategoriesService {
  Future<Either> getCategories();
}

class CategoriesServiceImpl implements CategoriesService {
  @override
  Future<Either> getCategories() async {
    try {
      final RestClient restClient = RestClient(localDio);
      final CategoriesResponse categories = await restClient.getCategories();
      return Right(categories);
    } catch (e) {
      return Left(e);
    }
  }
}
