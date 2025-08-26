import 'package:dartz/dartz.dart';

abstract class CategoriesRepo {
  Future<Either> getCategories();
}
