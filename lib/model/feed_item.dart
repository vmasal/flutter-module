import 'package:add_to_app_flutter_module/main.dart';

class FeedItem {
  final String? content;
  final String? imageUrl;
  final User user;
  final int commentsCount;
  final int likesCount;
  final int retweetsCount;

  FeedItem(
      {this.content,
      this.imageUrl,
      required this.user,
      this.commentsCount = 0,
      this.likesCount = 0,
      this.retweetsCount = 0});
}
