import 'dart:convert';

@json
class ArticleDetailEntity {
  final String id;
  final String title;
  final String url;
  final String image;
  final String src;
  final String content;
  final String author;
  final String time;

  ArticleDetailEntity({
    required this.id,
    required this.title,
    required this.url,
    required this.image,
    required this.src,
    required this.content,
    required this.author,
    required this.time,
  });
  factory ArticleDetailEntity.fromJson(Map<String, dynamic> json) {
    return ArticleDetailEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      image: json['image'] as String,
      src: json['src'] as String,
      content: json['content'] as String,
      author: json['author'] as String,
      time: json['time'] as String,
    );
  }
}
