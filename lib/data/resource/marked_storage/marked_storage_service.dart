import 'package:shared_preferences/shared_preferences.dart';

abstract interface class MarkedStorageService {
  Future<void> addMarkedArticleData(String markedArticles);

  Future<List<String>> getMarkedArticles();

  Future<void> removeMarkedArticle(String articleId);

  Future<bool> isMarkedArticle(String articleId);
}

class MarkedStorageServiceImpl implements MarkedStorageService {
  static const String _markedArticlesKey = 'marked_articles';
  final SharedPreferences _sharedPreferences;

  const MarkedStorageServiceImpl({required SharedPreferences sharedPreferences})
    : _sharedPreferences = sharedPreferences;

  @override
  Future<void> addMarkedArticleData(String newArticleId) async {
    final List<String> currentIds =
        _sharedPreferences.getStringList(_markedArticlesKey) ?? [];

    final idSet = currentIds.toSet();
    idSet.add(newArticleId);
    await _sharedPreferences.setStringList(_markedArticlesKey, idSet.toList());
  }

  @override
  Future<void> removeMarkedArticle(String articleIdToRemove) async {
    final List<String> currentIds =
        _sharedPreferences.getStringList(_markedArticlesKey) ?? [];
    currentIds.remove(articleIdToRemove);

    await _sharedPreferences.setStringList(_markedArticlesKey, currentIds);
  }

  @override
  Future<List<String>> getMarkedArticles() async {
    return _sharedPreferences.getStringList(_markedArticlesKey) ?? [];
  }

  @override
  Future<bool> isMarkedArticle(String articleId) async {
    final List<String> currentIds =
        _sharedPreferences.getStringList(_markedArticlesKey) ?? [];
    return currentIds.contains(articleId);
  }
}
