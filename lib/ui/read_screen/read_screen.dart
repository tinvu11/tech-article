import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_article/common/images/shimmer_image.dart';
import 'package:flutter_article/core/config/time/format_time.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/domain/models/response/article_detail.dart';
import 'package:flutter_article/ui/read_screen/bloc/read_screen_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';

class ReadScreen extends StatefulWidget {
  final ArticleDetailEntity article;
  const ReadScreen({super.key, required this.article});

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  @override
  void initState() {
    super.initState();
    // Kích hoạt sự kiện để tải trạng thái bookmark của bài báo
    context.read<ReadScreenBloc>().add(
      ReadScreenEvent.openScreen(idArticle: widget.article.id.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ReadScreenBloc, ReadScreenState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              _buildSliverAppBar(context, state),
              _buildArticleContent(context),
            ],
          );
        },
      ),
    );
  }

  /// Xây dựng SliverAppBar linh hoạt chứa ảnh bìa và các nút hành Fđộng.
  Widget _buildSliverAppBar(BuildContext context, ReadScreenState state) {
    return SliverAppBar(
      // surfaceTintColor: Colors.transparent,
      // backgroundColor: Colors.transparent,
      expandedHeight: 250,

      // collapsedHeight: 280,
      stretch: false,
      pinned: false,
      automaticallyImplyLeading: false,

      leading: _buildAppBarButton(
        context,
        icon: Icons.arrow_back_ios_new,
        onTap: () => context.pop(),
      ),
      actions: [
        _buildAppBarButton(
          context,
          icon: state.maybeWhen(
            initial: (isMarked) =>
                isMarked ? Icons.bookmark : Icons.bookmark_border,
            orElse: () => Icons.bookmark_border,
          ),
          onTap: () {
            context.read<ReadScreenBloc>().add(
              ReadScreenEvent.toggleMark(articleID: widget.article.id),
            );
          },
        ),
        const SizedBox(width: 8),
      ],
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        stretchModes: const [StretchMode.zoomBackground],
        background: Stack(
          fit: StackFit.expand,
          children: [
            // Ảnh bìa của bài báo
            ShimmerImage(
              url: widget.article.image.toString(),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // Lớp phủ gradient để đảm bảo các biểu tượng trên thanh trạng thái (status bar) luôn dễ thấy
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                    Colors.black.withOpacity(0.2),
                  ],
                  stops: const [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Nút bấm trên AppBar với hiệu ứng glassmorphism hiện đại.
  Widget _buildAppBarButton(
    BuildContext context, {
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(56),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.white, size: 20),
            ),
          ),
        ),
      ),
    );
  }

  /// Xây dựng phần nội dung chính của bài báo.
  Widget _buildArticleContent(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final timeAgo = FormatTime.formatTimeAgo(widget.article.time);

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tiêu đề bài báo
            Text(
              widget.article.title,
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Thông tin meta (tác giả, thời gian)
            Row(
              children: [
                const Icon(Icons.access_time_rounded, size: 16),
                const SizedBox(width: 6),
                Text(timeAgo, style: textTheme.bodyMedium),
                const SizedBox(width: 16),
                const Icon(Icons.source_outlined, size: 16),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    '${widget.article.src} - ${widget.article.author}',
                    style: textTheme.bodyMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Divider(color: Colors.white24, height: 24),

            // Nội dung bài báo dạng Markdown
            _buildMarkdownBody(widget.article.content),

            const SizedBox(height: 16),

            // Nơi để hiển thị danh sách các bài viết tương tự
          ],
        ),
      ),
    );
  }

  Widget _buildMarkdownBody(String markdown) {
    final textTheme = Theme.of(context).textTheme;
    return SelectionArea(
      child: MarkdownBody(
        data: markdown,
        shrinkWrap: true,
        styleSheet: MarkdownStyleSheet(
          p: textTheme.bodyLarge?.copyWith(height: 1.6),
          h1: textTheme.headlineSmall,
        ),

        imageBuilder: (uri, title, alt) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ShimmerImage(
                url: uri.toString(),
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          );
        },

        onTapLink: (text, href, title) {
          if (href != null) {
            print('Tapped link: $href');
            // Mở URL với url_launcher nếu cần
          }
        },
      ),
    );
  }

  // Phương thức dispose giữ nguyên
  @override
  void dispose() {
    super.dispose();
  }
}
