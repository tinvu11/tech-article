import 'package:dartz/dartz.dart';

abstract class MarkedArticlesRepo {
  Future<Either> getMarkedArticlesData();
}
