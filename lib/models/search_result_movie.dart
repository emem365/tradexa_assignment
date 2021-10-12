import 'dart:convert';

class SearchResultMovie {
  String title;
  String year;
  String imdbID;
  String type;
  String poster;
  SearchResultMovie({
    required this.title,
    required this.year,
    required this.imdbID,
    required this.type,
    required this.poster,
  });

  SearchResultMovie copyWith({
    String? title,
    String? year,
    String? imdbID,
    String? type,
    String? poster,
  }) {
    return SearchResultMovie(
      title: title ?? this.title,
      year: year ?? this.year,
      imdbID: imdbID ?? this.imdbID,
      type: type ?? this.type,
      poster: poster ?? this.poster,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Title': title,
      'Year': year,
      'imdbID': imdbID,
      'Type': type,
      'Poster': poster,
    };
  }

  factory SearchResultMovie.fromMap(Map<String, dynamic> map) {
    return SearchResultMovie(
      title: map['Title'],
      year: map['Year'],
      imdbID: map['imdbID'],
      type: map['Type'],
      poster: map['Poster'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchResultMovie.fromJson(String source) => SearchResultMovie.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SearchResultMovie(title: $title, year: $year, imdbID: $imdbID, type: $type, poster: $poster)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SearchResultMovie &&
      other.title == title &&
      other.year == year &&
      other.imdbID == imdbID &&
      other.type == type &&
      other.poster == poster;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      year.hashCode ^
      imdbID.hashCode ^
      type.hashCode ^
      poster.hashCode;
  }
}
