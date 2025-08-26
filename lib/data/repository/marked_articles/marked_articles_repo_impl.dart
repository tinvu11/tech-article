import 'package:dartz/dartz.dart';
import 'package:flutter_article/data/resource/marked_articles/marked_articles_service.dart';
import 'package:flutter_article/domain/repository/marked_articles/marked_articles_repo.dart';
import 'package:flutter_article/service_locator.dart';

class MarkedArticlesRepoImpl extends MarkedArticlesRepo {
  @override
  Future<Either> getMarkedArticlesData() async {
    return await sl<MarkedArticlesService>().getMarkedArticles();
  }
}
