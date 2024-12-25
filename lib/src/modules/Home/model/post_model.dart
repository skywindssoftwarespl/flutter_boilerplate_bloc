
class Post {
  final String username;
  final String timeAgo;
  final String content;
  final int likes;
  final int comments;
  final int shares;

  Post({
    required this.username,
    required this.timeAgo,
    required this.content,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}