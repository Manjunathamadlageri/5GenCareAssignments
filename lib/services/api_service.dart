// import 'package:sky_engine/_http/http.dart' as http;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_application_1/models/score_model.dart';

class ApiService {
  static const String _baseUrl = 'https://api-football.com/';

  Future<List<Score>> fetchScores() async {
    final response = await http.get(Uri.parse('$_baseUrl/scores'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      // Parse the response and return a list of Score objects
      return List<Score>.from(data['scores'].map((score) => Score.fromJson(score)));
    } else {
      throw Exception('Failed to load scores');
    }
  }
}
