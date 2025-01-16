import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:somnium/models/models.dart';

class MusicRepository {
  final http.Client _client;

  MusicRepository({http.Client? client}) : _client = client ?? http.Client();

  Future<List<Category>> getCategories() async {
    try {
      final response = await _client.post(
        Uri.parse("https://somniumeu.bytechserver.com/Song/getAllCategories"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode("sr"),
      );
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => Category.fromJson(json)).toList();
      } else {
        throw Exception('failed to load songs');
      }
    } catch (e) {
      throw Exception("Error fetching $e");
    }
  }

  Future<List<Song>> getSongs(Category cat) async {
    try {
      final response = await _client.post(
        Uri.parse("https://somniumeu.bytechserver.com/Song/getSongsByCategory"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "uid": "BAj5oepXBbZaYDAX7ZzwTNPctY72",
          "categoryid": cat.id,
          "language": "sr"
        }),
      );
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => Song.fromJson(json)).toList();
      } else {
        throw Exception("Failed loading songs");
      }
    } catch (e) {
      throw Exception("Error fetching $e");
    }
  }
}
