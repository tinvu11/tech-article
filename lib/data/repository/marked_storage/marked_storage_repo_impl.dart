import 'package:flutter_article/data/resource/marked_storage/marked_storage_service.dart';
import 'package:flutter_article/domain/repository/marked_storage/marked_storage_repo.dart';
import 'package:flutter_article/service_locator.dart';

class MarkedStorageRepoImpl implements MarkedStorageRepo {
  @override
  Future<void> addMarkedArticle(String articleId) async {
    return await sl<MarkedStorageService>().addMarkedArticleData(articleId);
  }

  @override
  Future<void> removeMarkedArticle(String articleId) async {
    return await sl<MarkedStorageService>().removeMarkedArticle(articleId);
  }

  @override
  Future<List<String>> getMarkedArticles() async {
    return await sl<MarkedStorageService>().getMarkedArticles();
  }

  @override
  Future<bool> isMarkedArticle(String articleId) async {
    return await sl<MarkedStorageService>().isMarkedArticle(articleId);
  }
}
