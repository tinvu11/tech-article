import 'package:flutter/material.dart';
import 'package:flutter_article/common/images/shimmer_image.dart';
import 'package:flutter_article/core/config/time/format_time.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:flutter_article/ui/search_screen/bloc/search_screen_bloc.dart';
import 'package:go_router/go_router.dart';

class ResultScreen extends StatelessWidget {
  final String searchTerm;
  const ResultScreen({super.key, required this.searchTerm});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchScreenBloc, SearchScreenState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              state.maybeWhen(
                orElse: () => 'Kết quả tìm kiếm...',
                loaded: (articles, idListMarked) {
                  return '${articles.length} kết quả cho "$searchTerm"';
                },
              ),
            ),
          ),

          body: state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (articles, idListMarked) {
              if (articles.isEmpty) {
                return const Center(child: Text('No results found'));
              }
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: articles
                      .map((e) => _builListtt(context, e, state))
                      .toList(),
                ),
              );
            },
            error: (message) => Center(child: Text(message)),
          ),
        );
      },
    );
  }
}

Widget _builListtt(
  BuildContext context,
  ArticleDetailEntity article,
  SearchScreenState state,
) {
  String timeAgo = FormatTime.formatTimeAgo(article.time);
  return OrientationBuilder(
    builder: (context, orientation) {
      final double imageSize = orientation == Orientation.landscape
          ? 140.0
          : 110.0;

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: GestureDetector(
          onTap: () {
            context.push('/read', extra: article);
          },
          child: Container(
            // margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            decoration: BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(color: Colors.grey.shade600),
              ),
            ),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          article.title,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(article.src),
                                Text(' - '),
                                Text(timeAgo),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<SearchScreenBloc>().add(
                                  SearchScreenEvent.toggleMark(
                                    idArticle: article.id,
                                  ),
                                );
                              },

                              child: state.maybeWhen(
                                orElse: () => Icon(Icons.bookmark_border),
                                loaded: (articles, idListMarked) => Icon(
                                  idListMarked.contains(article.id)
                                      ? Icons.bookmark
                                      : Icons.bookmark_border,
                                ),
                                error: (message) => Icon(Icons.error),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: imageSize,
                    height: imageSize,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: ShimmerImage(
                        height: double.infinity,
                        width: double.infinity,
                        url: article.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
