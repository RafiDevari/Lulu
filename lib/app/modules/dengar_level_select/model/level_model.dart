class LevelModel {
  final String level;
  final String title;
  final String thumbnail;
  final bool locked;

  LevelModel({
    required this.level,
    required this.title,
    required this.thumbnail,
    required this.locked,
  });

  factory LevelModel.fromJson(Map<String, dynamic> json) {
    return LevelModel(
      level: json['level'],
      title: json['title'],
      thumbnail: json['thumbnail'],
      locked: json['locked'],
    );
  }
}
