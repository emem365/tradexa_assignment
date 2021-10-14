import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tradexa_assignment/models/search_response.dart';
import 'package:tradexa_assignment/models/movie.dart';
import 'package:tradexa_assignment/models/search_result_movie.dart';
import 'package:tradexa_assignment/services/api_key.dart';
import 'package:tradexa_assignment/services/api_service.dart';

class OMDbApiService implements ApiService {
  static OMDbApiService? _instance;

  static OMDbApiService get instance {
    _instance = _instance ?? OMDbApiService._();
    return _instance!;
  }

  OMDbApiService._();

  String baseUrl = 'www.omdbapi.com';

  @override
  Future<Movie> getMovieById(String id) async {
    final uri = Uri.http(baseUrl, '/', {'apikey': APIKEY, 'i': id});
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      return Movie.fromJson(response.body);
    } else {
      throw Exception(
          'Unable to get data. Error Response: ${response.statusCode}');
    }
  }

  @override
  Future<SearchResponse> searchMovie(
      {required String searchKeyword, int pageNumber = 1}) async {
    final uri = Uri.http(baseUrl, '/',
        {'apikey': APIKEY, 's': searchKeyword, 'page': '$pageNumber'});
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final responseObject = json.decode(response.body);
      if (responseObject['Response'] == "False") {
        throw Exception(responseObject['Error']);
      }
      final List<SearchResultMovie>? movieResults = responseObject['Search']
          .map<SearchResultMovie>((e) => SearchResultMovie.fromMap(e))
          .toList();

      if (movieResults != null) {
        List<Movie?> movies = List.filled(movieResults.length, null);
        for (int i = 0; i < movies.length; i++) {
          movies[i] = await getMovieById(movieResults[i].imdbID);
        }
        return SearchResponse(
            results: movies.map((e) => e!).toList(),
            totalResults: int.parse(responseObject['totalResults']));
      }
      throw Exception('Unable to parse response');
    } else {
      throw Exception(
          'Unable to get data. Error Response: ${response.statusCode}');
    }
  }
}
