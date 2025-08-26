import 'package:dartz/dartz.dart';
import 'package:flutter_article/data/resource/categories/categories_serivice.dart';
import 'package:flutter_article/domain/repository/categories/categories_repo.dart';
import 'package:flutter_article/service_locator.dart';

class CategoriesRepoImpl implements CategoriesRepo {
  @override
  Future<Either> getCategories() async {
    return await sl<CategoriesService>().getCategories();
  }
}
