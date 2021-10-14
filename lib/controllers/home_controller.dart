import 'package:flutter/foundation.dart';
import 'package:tradexa_assignment/models/search_response.dart';
import 'package:tradexa_assignment/services/api_service.dart';

class HomeController with ChangeNotifier {
  
  final ApiService apiService;

  HomeController(this.apiService);
  
  bool isLoading = false;
  String searchKeyword = '';
  SearchResponse? searchResponse;
  String? error;

  void onChangeKeyword(String val){
    error = null;
    searchKeyword = val;
    notifyListeners();
  }

  void search() async {
    setLoading(true);
    try {
      searchResponse = await apiService.searchMovie(searchKeyword: searchKeyword);
      error = null;
    } catch (e) {
      searchResponse = null;
      error = e.toString();
    } finally {
      setLoading(false);
    }
  }

  void setLoading(bool val){
    isLoading  = val;
    notifyListeners();
  }

}