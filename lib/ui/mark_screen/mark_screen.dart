import 'package:flutter/material.dart';
import 'package:flutter_article/common/images/shimmer_image.dart';
import 'package:flutter_article/core/config/time/format_time.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:flutter_article/ui/mark_screen/bloc/mark_screen_bloc.dart';
import 'package:go_router/go_router.dart';

class BookMarks extends StatefulWidget {
  const BookMarks({super.key});

  @override
  State<BookMarks> createState() => _BookMarksState();
}

class _BookMarksState extends State<BookMarks> {
  @override
  void initState() {
    super.initState();
    context.read<MarkScreenBloc>().add(MarkScreenEvent.bookMarksLoad());
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bookmarks',
          style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<MarkScreenBloc, MarkScreenState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loaded: (idArticles, articles) {
              if (articles.isEmpty) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<MarkScreenBloc>().add(
                      MarkScreenEvent.bookMarksLoad(),
                    );
                    await Future.delayed(const Duration(seconds: 1));
                  },
                  child: ListView(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Center(
                          child: Text(
                            'Marked article is empty',
                            style: textTheme.bodyLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<MarkScreenBloc>().add(
                    MarkScreenEvent.bookMarksLoad(),
                  );
                  await Future.delayed(const Duration(seconds: 1));
                },
                child: ListView.builder(
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    final article = articles[index];
                    return _builListtt(context, article, state);
                  },
                ),
              );
            },
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }

  void readArticle(ArticleDetailEntity article, BuildContext context) {
    context.push('/read', extra: article);
  }

  Widget _builListtt(
    BuildContext context,
    ArticleDetailEntity article,
    MarkScreenState state,
  ) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return OrientationBuilder(
      builder: (context, orientation) {
        final double imageSize = orientation == Orientation.landscape
            ? 140.0
            : 110.0;
        String timeAgo = FormatTime.formatTimeAgo(article.time);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),

          child: GestureDetector(
            onTap: () {
              readArticle(article, context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              decoration: BoxDecoration(
                border: BorderDirectional(
                  bottom: BorderSide(color: colorScheme.secondary, width: 2),
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
                            style: textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${article.src} - $timeAgo',
                                style: textTheme.titleSmall,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.read<MarkScreenBloc>().add(
                                    MarkScreenEvent.toggleMark(
                                      idArticle: article.id,
                                    ),
                                  );
                                },
                                child: Icon(Icons.bookmark),
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
}
