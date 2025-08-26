import 'package:flutter_article/domain/repository/marked_storage/marked_storage_repo.dart';

class AddMarkStorageUseCase {
  final MarkedStorageRepo _repository;

  // Repository được truyền vào qua constructor
  AddMarkStorageUseCase(this._repository);

  // Dùng phương thức call() để class có thể được gọi như một hàm
  Future<void> call(String articleId) {
    return _repository.addMarkedArticle(articleId);
  }
}

class GetMarkedArticlesUseCase {
  final MarkedStorageRepo _repository;

  GetMarkedArticlesUseCase(this._repository);

  Future<List<String>> call() {
    return _repository.getMarkedArticles();
  }
}

// 2. UseCase để xóa bookmark
class RemoveBookmarkUseCase {
  final MarkedStorageRepo _repository;

  RemoveBookmarkUseCase(this._repository);

  Future<void> call(String articleId) {
    return _repository.removeMarkedArticle(articleId);
  }
}

// 3. UseCase để kiểm tra bookmark
class IsBookmarkedUseCase {
  final MarkedStorageRepo _repository;

  IsBookmarkedUseCase(this._repository);

  Future<bool> call(String articleId) {
    return _repository.isMarkedArticle(articleId);
  }
}
