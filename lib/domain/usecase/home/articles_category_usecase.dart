import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/api/rest_client.dart';
import 'package:flutter_article/core/usecase/usecase.dart';
import 'package:flutter_article/domain/repository/home/articles_category_repo.dart';
import 'package:flutter_article/service_locator.dart';

class ArticlesCategoryUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<ArticlesCategoryRepo>().getDataByCategory(
      HomeDataRequest(
        page: params.page,
        limit: params.limit,
        category: params.category,
      ),
    );
  }
}
