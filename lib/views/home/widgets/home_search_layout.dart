import 'package:flutter/material.dart';
import 'package:tradexa_assignment/models/search_response.dart';
import 'package:tradexa_assignment/views/home/widgets/search_bar.dart';
import 'package:tradexa_assignment/views/home/widgets/search_movie_tile.dart';

import '../../../mock_search_result.dart';

class HomeSearchLayout extends StatelessWidget {
  const HomeSearchLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = SearchResponse.fromMap(searchResult);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 125,
          ),
          const SearchBar(),
          const SizedBox(height: 30),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return const SearchMovieTile();
            },
            itemCount: result.results.length,
          )),
        ],
      ),
    );
  }
}