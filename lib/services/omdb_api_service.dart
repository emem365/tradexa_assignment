import 'package:http/http.dart' as http;
import 'package:tradexa_assignment/models/search_response.dart';
import 'package:tradexa_assignment/models/movie.dart';
import 'package:tradexa_assignment/services/api_key.dart';
import 'package:tradexa_assignment/services/api_service.dart';

class OMDbApiService implements ApiService {
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
      return SearchResponse.fromJson(response.body);
    } else {
      throw Exception(
          'Unable to get data. Error Response: ${response.statusCode}');
    }
  }
}
