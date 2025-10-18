import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either> searchArticlesData(String query);
}
