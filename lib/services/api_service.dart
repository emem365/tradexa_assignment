import 'package:tradexa_assignment/models/movie.dart';
import 'package:tradexa_assignment/models/search_response.dart';

abstract class ApiService {

  Future<SearchResponse> searchMovie({required String searchKeyword, int pageNumber = 1});

  Future<Movie> getMovieById(String id);

}