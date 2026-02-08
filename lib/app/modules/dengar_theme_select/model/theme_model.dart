class ThemeModel {
  final String id;
  final String title;
  final String thumbnail;

  ThemeModel({
    required this.id,
    required this.title,
    required this.thumbnail,
  });

  factory ThemeModel.fromJson(Map<String, dynamic> json) {
    return ThemeModel(
      id: json['id'],
      title: json['title'],
      thumbnail: json['thumbnail'],
    );
  }
}
