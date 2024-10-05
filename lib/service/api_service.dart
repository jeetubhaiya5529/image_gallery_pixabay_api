// Service class for Pixabay API
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_gallery/model/model.dart';

class PixabayService {
  final String apiKey = '46341580-8f913713dc55db0dced89fdf3';
  final String apiUrl = 'https://pixabay.com/api/';

  Future<List<Photo>> fetchPhotos(String query) async {
    final response = await http.get(
      Uri.parse('$apiUrl?key=$apiKey&q=$query&image_type=photo'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data['hits'] as List).map((e) => Photo.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load photos');
    }
  }
}