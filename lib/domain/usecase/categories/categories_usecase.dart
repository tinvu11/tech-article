import 'package:dartz/dartz.dart';
import 'package:flutter_article/core/usecase/usecase.dart';
import 'package:flutter_article/domain/repository/categories/categories_repo.dart';
import 'package:flutter_article/service_locator.dart';

class CategoriesUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<CategoriesRepo>().getCategories();
  }
}
