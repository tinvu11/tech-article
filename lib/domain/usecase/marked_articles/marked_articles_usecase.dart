import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/usecase/usecase.dart';
import 'package:flutter_article/domain/repository/marked_articles/marked_articles_repo.dart';
import 'package:flutter_article/service_locator.dart';

///
/// Get All Article on Search
///
class MarkedArticlesUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<MarkedArticlesRepo>().getMarkedArticlesData();
  }
}
