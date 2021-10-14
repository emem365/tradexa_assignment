import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:tradexa_assignment/models/movie.dart';

class SearchResponse {
  List<Movie> results;
  int totalResults;
  SearchResponse({
    required this.results,
    required this.totalResults,
  });

  SearchResponse copyWith({
    List<Movie>? results,
    int? totalResults,
  }) {
    return SearchResponse(
      results: results ?? this.results,
      totalResults: totalResults ?? this.totalResults,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'results': results.map((x) => x.toMap()).toList(),
      'totalResults': totalResults,
    };
  }

  factory SearchResponse.fromMap(Map<String, dynamic> map) {
    return SearchResponse(
      results: List<Movie>.from(map['results']?.map((x) => Movie.fromMap(x))),
      totalResults: int.parse(map['totalResults']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchResponse.fromJson(String source) => SearchResponse.fromMap(json.decode(source));

  @override
  String toString() => 'SearchResponse(results: $results, totalResults: $totalResults)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SearchResponse &&
      listEquals(other.results, results) &&
      other.totalResults == totalResults;
  }

  @override
  int get hashCode => results.hashCode ^ totalResults.hashCode;
}
