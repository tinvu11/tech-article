import 'package:dartz/dartz.dart';
import 'package:flutter_article/data/resource/search/search_service.dart';
import 'package:flutter_article/domain/repository/search/search_repo.dart';
import 'package:flutter_article/service_locator.dart';

class SearchRepoImpl extends SearchRepo {
  @override
  Future<Either> searchArticlesData(String query) async {
    return await sl<SearchService>().searchArticles(query);
  }
}
