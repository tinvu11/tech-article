import 'package:dio/dio.dart';
import 'package:flutter_article/core/constants/app_urls.dart';
import 'package:flutter_article/data/models/response/categories_response.dart';
import 'package:flutter_article/data/models/response/articles_response.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

///
/// API of Application
///
@RestApi(baseUrl: AppUrls.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @POST("/articles/paginated")
  Future<ArticlesResponse> getHomeData(@Body() HomeDataRequest body);

  @POST("/articles/by-ids")
  Future<List<ArticleDetailEntity>> getMarkedArticles(
    @Body() GetByIDsRequest body,
  );
  @POST("/articles/by-category")
  Future<ArticlesResponse> getArticlesByCategory(@Body() HomeDataRequest body);
  @GET("/categories")
  Future<CategoriesResponse> getCategories();

  @POST("/articles/search")
  Future<List<ArticleDetailEntity>> searchArticles(@Body() SearchRequest body);
}

class HomeDataRequest {
  final int page;
  final int limit;
  final String? category;

  HomeDataRequest({required this.page, required this.limit, this.category});

  Map<String, dynamic> toJson() => {
    'page': page,
    'limit': limit,
    'category': category,
  };
}

class GetByIDsRequest {
  final List<String> ids;

  GetByIDsRequest({required this.ids});

  Map<String, dynamic> toJson() => {'ids': ids};
}

class SearchRequest {
  final String query;

  SearchRequest({required this.query});

  Map<String, dynamic> toJson() => {'query': query};
}
