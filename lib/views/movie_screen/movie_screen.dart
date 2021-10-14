import 'package:flutter/material.dart';
import 'package:tradexa_assignment/mock_search_result.dart';
import 'package:tradexa_assignment/models/movie.dart';

import 'widgets/widgets.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchResultMovie = Movie.fromMap(avengers);

    return Scaffold(
      body: ListView(
        children: [
          MoviePoster(movie: searchResultMovie),
          const ButtonRow(),
          RatingsCard(movie: searchResultMovie),
          MetadataCard(movie: searchResultMovie),
          MovieInfoCard(movie: searchResultMovie),
        ],
      ),
    );
  }
}