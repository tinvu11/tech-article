class FormatTime {
  static String formatTimeAgo(String isoString) {
    // Hàm này giữ nguyên như cũ vì nó đã hoạt động tốt.
    final dateTime = DateTime.parse(isoString);
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inSeconds < 60) {
      return 'Vừa xong';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes} phút';
    } else if (difference.inDays < 1) {
      return '${difference.inHours} giờ';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} ngày';
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '$months tháng';
    } else {
      final years = (difference.inDays / 365).floor();
      return '$years năm ';
    }
  }
}
