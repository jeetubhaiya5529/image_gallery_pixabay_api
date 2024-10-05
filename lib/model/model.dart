// Model to represent a photo
class Photo {
  final String url;
  final String user;
  final int likes;
  final int views;

  Photo({required this.url, required this.user, required this.likes, required this.views});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      url: json['webformatURL'],
      user: json['user'],
      likes: json['likes'],
      views: json['views'],
    );
  }
}