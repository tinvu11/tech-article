import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';

abstract class ArticlesAllRepo {
  Future<Either> getHomeData(HomeDataRequest request);
}
