import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

/// A widget that displays an image with a shimmer loading effect.
/// - If the image is still loading, a shimmering placeholder is shown.
/// - Once loaded, the image replaces the placeholder.
class ShimmerImage extends StatefulWidget {
  /// The URL of the image to be displayed.
  final String url;

  /// Determines how the image should be fitted inside its container.
  final BoxFit fit;

  /// The width of the image when `aspectRatio` is not provided.
  final double width;

  /// The height of the image when `aspectRatio` is not provided.
  final double height;

  /// Optional aspect ratio to control the image's width-to-height ratio.
  /// - If `aspectRatio` is greater than 0, it takes priority over `width` and `height`.
  final double aspectRatio;

  /// The size of the placeholder icon when the image is loading.
  final double iconHolderSize;

  const ShimmerImage({
    super.key,
    required this.url,
    required this.fit,
    this.width = 16,
    this.height = 16,
    this.aspectRatio = 0,
    this.iconHolderSize = 40,
  });

  @override
  State<ShimmerImage> createState() => _ShimmerImageState();
}

class _ShimmerImageState extends State<ShimmerImage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Stack(
      children: <Widget>[
        widget.aspectRatio != 0
            ? AspectRatio(
                aspectRatio: widget.aspectRatio,
                child: CachedNetworkImage(
                  imageUrl: widget.url,
                  fit: widget.fit,
                  memCacheWidth: 400, // Giới hạn cache memory
                  memCacheHeight: 300,
                  maxWidthDiskCache: 800, // Cache disk
                  maxHeightDiskCache: 600,
                  // placeholder: (context, url) => const SizedBox.shrink(),
                  errorWidget: (context, url, error) => const SizedBox.shrink(),
                ),
              )
            : CachedNetworkImage(
                imageUrl: widget.url,
                width: widget.width,
                height: widget.height,
                fit: widget.fit,
                memCacheWidth: 400,
                memCacheHeight: 300,
                maxWidthDiskCache: 800,
                maxHeightDiskCache: 600,
                // placeholder: (context, url) => const SizedBox.shrink(),
                errorWidget: (context, url, error) => const SizedBox.shrink(),
              ),
      ],
    );
  }
}
