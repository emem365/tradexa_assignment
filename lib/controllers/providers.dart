import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradexa_assignment/controllers/home_controller.dart';
import 'package:tradexa_assignment/models/movie.dart';
import 'package:tradexa_assignment/services/api_service.dart';
import 'package:tradexa_assignment/services/omdb_api_service.dart';

final apiServiceProvider = Provider<ApiService>((ref) {
  return OMDbApiService.instance;
});

final homeControllerProvider = ChangeNotifierProvider<HomeController>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return HomeController(apiService);
});

final movieProvider = ScopedProvider<Movie>((ref){
  throw UnimplementedError();
});

final movieScreenProvider = ScopedProvider<Movie> ((ref) => throw UnimplementedError());