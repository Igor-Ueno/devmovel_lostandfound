import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/lost_item.dart';

class PostsService {
  static const String baseUrl = 'https://backend-devmovel.onrender.com/api/posts';

  Future<List<LostItem>> getLostItems() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((item) => LostItem.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load lost items');
    }
  }

  Future<List<LostItem>> searchLostItems(String title) async {
    final response = await http.get(Uri.parse('$baseUrl/search?title=$title'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((item) => LostItem.fromJson(item)).toList();
    } else {
      throw Exception('Failed to search lost items');
    }
  }

  Future<LostItem> createPost(String token, LostItem post) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {
        'x-auth-token': token,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'title': post.title,
        'description': post.description,
        'contact': post.contact,
        'url': post.url,
      }),
    );

    if (response.statusCode == 201) {
      return LostItem.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create post');
    }
  }
}
