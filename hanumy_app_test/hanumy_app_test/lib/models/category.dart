class Kategorija {
  final int id;
  final String name;
  final String desc;
  final String lang;

  Kategorija(
      {required this.id,
      required this.name,
      required this.desc,
      required this.lang});

  Map<String, dynamic> toJson() {
    return {
      "id": 0,
      "translations": [
        {"languageCode": "sr", "name": name, "description": desc},
        {"languageCode": "en", "name": name, "description": desc}
      ]
    };
  }
}
