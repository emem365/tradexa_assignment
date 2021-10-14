import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:tradexa_assignment/models/rating.dart';

class Movie {
  String title;
  String year;
  String rated;
  String released;
  String runtime;
  String genre;
  String director;
  String writer;
  String actors;
  String plot;
  String language;
  String country;
  String awards;
  String poster;
  List<Rating> ratings;
  String metascore;
  String imdbRating;
  String imdbVotes;
  String imdbID;
  String type;
  Movie({
    required this.title,
    required this.year,
    required this.rated,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.director,
    required this.writer,
    required this.actors,
    required this.plot,
    required this.language,
    required this.country,
    required this.awards,
    required this.poster,
    required this.ratings,
    required this.metascore,
    required this.imdbRating,
    required this.imdbVotes,
    required this.imdbID,
    required this.type,
  });

  Movie copyWith({
    String? title,
    String? year,
    String? rated,
    String? released,
    String? runtime,
    String? genre,
    String? director,
    String? writer,
    String? actors,
    String? plot,
    String? language,
    String? country,
    String? awards,
    String? poster,
    List<Rating>? ratings,
    String? metascore,
    String? imdbRating,
    String? imdbVotes,
    String? imdbID,
    String? type,
  }) {
    return Movie(
      title: title ?? this.title,
      year: year ?? this.year,
      rated: rated ?? this.rated,
      released: released ?? this.released,
      runtime: runtime ?? this.runtime,
      genre: genre ?? this.genre,
      director: director ?? this.director,
      writer: writer ?? this.writer,
      actors: actors ?? this.actors,
      plot: plot ?? this.plot,
      language: language ?? this.language,
      country: country ?? this.country,
      awards: awards ?? this.awards,
      poster: poster ?? this.poster,
      ratings: ratings ?? this.ratings,
      metascore: metascore ?? this.metascore,
      imdbRating: imdbRating ?? this.imdbRating,
      imdbVotes: imdbVotes ?? this.imdbVotes,
      imdbID: imdbID ?? this.imdbID,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Title': title,
      'Year': year,
      'Rated': rated,
      'Released': released,
      'Runtime': runtime,
      'Genre': genre,
      'Director': director,
      'Writer': writer,
      'Actors': actors,
      'Plot': plot,
      'Language': language,
      'Country': country,
      'Awards': awards,
      'Poster': poster,
      'Ratings': ratings.map((x) => x.toMap()).toList(),
      'Metascore': metascore,
      'imdbRating': imdbRating,
      'imdbVotes': imdbVotes,
      'imdbID': imdbID,
      'Type': type,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      title: map['Title'],
      year: map['Year'],
      rated: map['Rated'],
      released: map['Released'],
      runtime: map['Runtime'],
      genre: map['Genre'],
      director: map['Director'],
      writer: map['Writer'],
      actors: map['Actors'],
      plot: map['Plot'],
      language: map['Language'],
      country: map['Country'],
      awards: map['Awards'],
      poster: map['Poster'],
      ratings: List<Rating>.from(map['Ratings']?.map((x) => Rating.fromMap(x))),
      metascore: map['Metascore'],
      imdbRating: map['imdbRating'],
      imdbVotes: map['imdbVotes'],
      imdbID: map['imdbID'],
      type: map['Type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Movie(title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, ratings: $ratings, metascore: $metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbID: $imdbID, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Movie &&
      other.title == title &&
      other.year == year &&
      other.rated == rated &&
      other.released == released &&
      other.runtime == runtime &&
      other.genre == genre &&
      other.director == director &&
      other.writer == writer &&
      other.actors == actors &&
      other.plot == plot &&
      other.language == language &&
      other.country == country &&
      other.awards == awards &&
      other.poster == poster &&
      listEquals(other.ratings, ratings) &&
      other.metascore == metascore &&
      other.imdbRating == imdbRating &&
      other.imdbVotes == imdbVotes &&
      other.imdbID == imdbID &&
      other.type == type;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      year.hashCode ^
      rated.hashCode ^
      released.hashCode ^
      runtime.hashCode ^
      genre.hashCode ^
      director.hashCode ^
      writer.hashCode ^
      actors.hashCode ^
      plot.hashCode ^
      language.hashCode ^
      country.hashCode ^
      awards.hashCode ^
      poster.hashCode ^
      ratings.hashCode ^
      metascore.hashCode ^
      imdbRating.hashCode ^
      imdbVotes.hashCode ^
      imdbID.hashCode ^
      type.hashCode;
  }
}
