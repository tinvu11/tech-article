import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/usecase/usecase.dart';
import 'package:flutter_article/domain/repository/search/search_repo.dart';
import 'package:flutter_article/service_locator.dart';

class SearchUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    final String query = params;
    // return await sl<SearchArticleService>().searchArticles(query);
    return await sl<SearchRepo>().searchArticlesData(query);
  }
}
