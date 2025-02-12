class Materijal {
  final int id;
  final String lang;
  final String name;

  Materijal({required this.id, required this.lang, required this.name});

  Map<String, dynamic> toJson() {
    return {
      "id": 0,
      "translations": [
        {"languageCode": lang, "name": name}
      ]
    };
  }
}
