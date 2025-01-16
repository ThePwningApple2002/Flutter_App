class Song {
  final int id;
  final String title;
  final String songUrl;
  final String binauralUrl;
  final String imageUrl;
  final String blurHash;
  final int duration;
  final String author;
  final bool isFavorite;
  final List<Song>? userSongsRelations;
  final List<Song>? tagSongRelations;
  final bool isPaid;
  final bool isLocked;

  Song({
    required this.id,
    required this.title,
    required this.songUrl,
    required this.binauralUrl,
    required this.imageUrl,
    required this.blurHash,
    required this.duration,
    required this.author,
    required this.isFavorite,
    this.userSongsRelations,
    this.tagSongRelations,
    required this.isPaid,
    required this.isLocked,
  });

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      id: json['id'] ?? 1,
      title: json['title'] ?? '',
      songUrl: json['songUrl'] ?? '',
      binauralUrl: json['binauralUrl'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      blurHash: json['blurHash'] ?? '',
      duration: json['duration'] ?? 0,
      author: json['author'] ?? '',
      isFavorite: json['isFavorite'] ?? false,
      userSongsRelations: json['userSongsRelations'] != null
          ? List<Song>.from(
              json['userSongsRelations'].map((x) => Song.fromJson(x)))
          : null,
      tagSongRelations: json['tagSongRelations'] != null
          ? List<Song>.from(
              json['tagSongRelations'].map((x) => Song.fromJson(x)))
          : null,
      isPaid: json['isPaid'] ?? false,
      isLocked: json['isLocked'] ?? false,
    );
  }
}
