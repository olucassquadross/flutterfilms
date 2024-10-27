import 'dart:convert';
import 'package:http/http.dart' as http;
import 'movie_model.dart';


class MovieService {
  static const String apiKey = 'e26f0f1d2422333b052bec213f704535';
  static const String baseUrl = 'https://api.themoviedb.org/3';

Future<List<Movie>> fetchPopularMovies() async {
  final response = await http.get(Uri.parse('$baseUrl/movie/popular?api_key=$apiKey'));

  if (response.statusCode == 200) {
    final List results = jsonDecode(response.body)['results'];
    return results.map((e) => Movie.fromJson(e)).toList();
  } else {
    throw Exception('Failed to load movies');
  }
}


  Future<MovieDetail> fetchMovieDetails(int movieId) async {
    final response = await http.get(Uri.parse('$baseUrl/movie/$movieId?api_key=$apiKey'));

    if (response.statusCode == 200) {
      return MovieDetail.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load movie details');
    }
  }
}
