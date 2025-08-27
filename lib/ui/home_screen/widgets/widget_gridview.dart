import 'package:flutter/material.dart';
import 'package:flutter_article/common/helper/log_helper.dart';
import 'package:flutter_article/common/images/shimmer_image.dart';
import 'package:flutter_article/core/config/time/format_time.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:flutter_article/domain/models/response/home_data.dart';
import 'package:flutter_article/ui/home_screen/bloc/home_bloc.dart';
import 'package:go_router/go_router.dart';

class WidgetListArticle extends StatefulWidget {
  final String category;

  const WidgetListArticle({super.key, required this.category});

  @override
  State<WidgetListArticle> createState() => _WidgetListArticleState();
}

class _WidgetListArticleState extends State<WidgetListArticle>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  // Xóa _scrollController và các biến liên quan
  // final _scrollController = ScrollController();
  int _page = 2;
  final int _limit = 20;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    // Xóa listener của scroll controller
    // _scrollController.addListener(_onScroll);
  }

  // Hàm _onScroll không còn cần thiết, thay vào đó chúng ta sẽ dùng NotificationListener

  bool _handleScrollNotification(ScrollNotification notification) {
    // Kiểm tra nếu đang cuộn và đã cuộn gần đến cuối
    if (notification is ScrollUpdateNotification &&
        notification.metrics.pixels >=
            notification.metrics.maxScrollExtent * 0.9) {
      final currentState = context.read<HomeBloc>().state;
      final loadedState = currentState.mapOrNull(
        tabContentLoaded: (state) => state,
      );

      if (loadedState == null || _isLoadingMore) {
        return false;
      }

      final hasReachedMax = loadedState.hasReachedMax[widget.category] ?? false;

      if (!hasReachedMax) {
        // setState để đảm bảo _isLoadingMore được cập nhật và UI rebuild
        setState(() {
          _isLoadingMore = true;
        });
        LogHelper.info(tag: 'WidgetListArticle', message: 'Load more articles');

        if (widget.category != 'all') {
          context.read<HomeBloc>().add(
            HomeEvent.loadData(
              page: _page,
              limit: _limit,
              category: widget.category,
            ),
          );
          _page++;
        } else {
          context.read<HomeBloc>().add(
            HomeEvent.loadData(page: _page, limit: _limit),
          );
          _page++;
        }
      }
    }
    return false; // Trả về false để cho phép thông báo tiếp tục được lan truyền
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        state.whenOrNull(
          tabContentLoaded: (_, __, ___) {
            if (_isLoadingMore) {
              setState(() {
                _isLoadingMore = false;
              });
            }
          },
        );
      },
      builder: (context, state) {
        return state.when(
          tabContentInitial: () => Container(),
          tabContentLoading: () =>
              const Center(child: CircularProgressIndicator()),
          tabContentLoaded: (categories, meta, hasReachedMax) {
            if (!meta.containsKey(widget.category) ||
                meta[widget.category] == null) {
              return const Center(child: CircularProgressIndicator());
            }
            return _buildGridView(meta[widget.category]!);
          },
          tabContentError: (message) => Center(child: Text(message)),
        );
      },
    );
  }

  Widget _buildGridView(HomeDataEntity meta) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () {
                  _page = 1;
                  return Future.delayed(const Duration(milliseconds: 500), () {
                    context.read<HomeBloc>().add(
                      HomeEvent.loadData(
                        page: _page,
                        limit: _limit,
                        category: widget.category,
                      ),
                    );
                  });
                },
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: meta.articles.length,
                  shrinkWrap:
                      true, // shrinkWrap nên là true trong một Column/Expanded
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.83,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 2.0,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    var article = meta.articles[index];
                    return _buildArticleCard(article, context);
                  },
                ),
              ),
            ),
            if (_isLoadingMore) const BottomLoader(),
          ],
        ),
      ),
    );
  }

  void readArticle(ArticleDetailEntity article, BuildContext context) {
    context.push('/read', extra: article);
  }

  Widget _buildArticleCard(ArticleDetailEntity article, BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    String timeAgo = FormatTime.formatTimeAgo(article.time);

    return GestureDetector(
      onTap: () {
        readArticle(article, context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.5),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Hero(
                  tag: 'article_image_${article.id}_${article.image}',
                  child: ShimmerImage(
                    key: ValueKey('${article.id}_${article.image}'),
                    url: article.image,
                    aspectRatio: 1.5,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              article.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3),
            Text('${article.src} - $timeAgo', style: textTheme.titleSmall),
          ],
        ),
      ),
    );
  }
}

class BottomLoader extends StatelessWidget {
  const BottomLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(strokeWidth: 2.0),
        ),
      ),
    );
  }
}
