import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_detail_response.g.dart';
part 'article_detail_response.freezed.dart';

@freezed
abstract class ArticleDetailResponse with _$ArticleDetailResponse {
  // Lớp này dùng để nhận dữ liệu thô từ API và biến nó thành một đối tượng Dart an toàn, bất biến.

  // vì ArticleDetailResponse là abstract không thể tạo contractor được nên phải dùng factory để freezed tạo
  // contructor cho lớp ẩn _$ArticleDetailResponse
  const factory ArticleDetailResponse({
    required String id,
    required String title,
    required String url,
    required String image,
    required String src,
    required String content,
    required String author,
    required String time,
  }) = _ArticleDetailResponse;

  factory ArticleDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailResponseFromJson(json);
}

// chuyển từ Response model sang Domain Entity
// final listResponse = <ArticleDetailResponse>[...];
// final listEntity = listResponse.toEntities();
// extension: Đây là một cách để thêm phương thức mới vào một class (là ArticleDetailResponse) mà không cần sửa đổi class gốc.
//Mục đích: Nhiệm vụ của nó là chuyển đổi đối tượng của Lớp Data (ArticleDetailResponse) thành đối tượng của Lớp Domain (ArticleDetailEntity).
extension ArticleDetailResponseX on ArticleDetailResponse {
  ArticleDetailEntity toEntity() {
    return ArticleDetailEntity(
      id: id,
      title: title,
      url: url,
      image: image,
      src: src,
      content: content,
      author: author,
      time: time,
    );
  }
}

// Mục đích: Chuyển đổi một danh sách List<ArticleDetailResponse> (có thể null) thành một danh sách List<ArticleDetailEntity>.
extension ListArticleDetailResponseX on List<ArticleDetailResponse>? {
  List<ArticleDetailEntity> toEntities() {
    return this?.map((e) => e.toEntity()).toList() ?? [];
  }
}
