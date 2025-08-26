abstract interface class MarkedStorageRepo {
  Future<void> addMarkedArticle(String articleId);
  Future<void> removeMarkedArticle(String articleId);
  Future<bool> isMarkedArticle(String articleId);
  Future<List<String>> getMarkedArticles();
}
