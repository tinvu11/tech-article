import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/core/usecase/usecase.dart';
import 'package:flutter_article/domain/repository/home/articles_all_repo.dart';
import 'package:flutter_article/service_locator.dart';

class ArticlesAllUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<ArticlesAllRepo>().getHomeData(
      HomeDataRequest(page: params.page, limit: params.limit),
    );
  }
}
