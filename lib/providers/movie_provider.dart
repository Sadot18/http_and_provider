import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_and_provider/models/movie.dart';

class MovieProvider extends ChangeNotifier{

  List<Movie> now_playing = [];
  final String _dominio = 'api.themoviedb.org';
  final String _segmento = '3/movie/now_playing';
  final String _apiKey = '5999788a963ea326c8ceb13a398a73a1';
  final String _language = 'es-MX';

  MovieProvider() {
    getMoviesNowPlaying();
  }

  Future<List<Movie>> getMoviesNowPlaying() async {
    final response = await http.get(Uri.https(_dominio, _segmento, {
      'api_key': _apiKey,
      'language': _language,
    }));

    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      final List<dynamic> results = json['results'];
      now_playing = results.map((dynamic item) => Movie.fromJson(item)).toList();
      notifyListeners();
      return now_playing;
    } else {
      throw Exception('Failed to load movies');
    }
  }
  
}