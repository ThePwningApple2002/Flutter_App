import "dart:convert";
import "dart:io";
import "package:hanumy_app_test/models/api_response.dart";
import "package:hanumy_app_test/models/category.dart";
import 'package:hanumy_app_test/models/material.dart';
import "package:http/http.dart" as http;

class Repository {
  Future<void> postCategory(Kategorija category) async {
    try {
      final response = await http.post(
          Uri.parse("https://hanumyeu.bytechserver.com/Product/addCategory"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(category.toJson()));

      if (response.statusCode == 200) {
        final res = jsonDecode(response.body);
        print(res);
      }
    } catch (e) {
      print("puklo" + e.toString());
    }
  }

  Future<ApiResponse> postMaterial(Materijal material) async {
    try {
      final response = await http.post(
          Uri.parse("https://hanumyeu.bytechserver.com/Product/addCategory"),
          headers: {"Content-Type": "application/json"},
          body: json.encode(material.toJson()));

      if (response.statusCode == 200) {
        final ApiResponse res = json.decode(response.body);
        return res;
      }
    } catch (e) {
      throw Exception("Nece");
      print("puklo");
    }
    throw Exception("Unexpected error");
    print("puklo");
  }
}
