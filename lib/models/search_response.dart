import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:tradexa_assignment/models/search_result_movie.dart';

class SearchResponse {
  List<SearchResultMovie> results;
  int totalResults;
  SearchResponse({
    required this.results,
    required this.totalResults,
  });

  SearchResponse copyWith({
    List<SearchResultMovie>? results,
    int? totalResults,
  }) {
    return SearchResponse(
      results: results ?? this.results,
      totalResults: totalResults ?? this.totalResults,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Search': results.map((x) => x.toMap()).toList(),
      'totalResults': totalResults,
    };
  }

  factory SearchResponse.fromMap(Map<String, dynamic> map) {
    return SearchResponse(
      results: List<SearchResultMovie>.from(map['Search']?.map((x) => SearchResultMovie.fromMap(x))),
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
