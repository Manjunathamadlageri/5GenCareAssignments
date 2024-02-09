import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/score_model.dart';
import 'package:flutter_application_1/services/api_service.dart';

class ScoreProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<Score> _scores = [];
  bool _isLoading = false;
  bool _hasError = false;

  List<Score> get scores => _scores;
  bool get isLoading => _isLoading;
  bool get hasError => _hasError;

  void fetchScores() async {
    _isLoading = true;
    _hasError = false;
    notifyListeners();

    try {
      _scores = await _apiService.fetchScores();
    } catch (e) {
      _hasError = true;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
