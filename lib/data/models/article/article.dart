import 'package:freezed_annotation/freezed_annotation.dart';
part 'article.freezed.dart'; // Tệp này được tạo bởi freezed
part 'article.g.dart';

@freezed
abstract class Article with _$Article {
  const factory Article({
    required String id,
    required String url,
    required String src,
    required String title,
    required String author,
    required String content,
    required String imageUrl,
    required String time,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
