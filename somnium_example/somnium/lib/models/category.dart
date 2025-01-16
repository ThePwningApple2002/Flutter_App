import './models.dart';

class Category {
  final int id;
  final String iconUrl;
  final String title;
  final List<Song> songs;

  Category(
      {required this.id,
      required this.iconUrl,
      required this.title,
      required this.songs});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      iconUrl: json['icon'] ?? '',
      songs: json['songs'] != null
          ? List<Song>.from(json['songs'].map((x) => Category.fromJson(x)))
          : [],
    );
  }
}
