import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradexa_assignment/controllers/providers.dart';
import 'package:tradexa_assignment/views/movie_screen/movie_screen.dart';

class SearchMovieTile extends ConsumerWidget {
  const SearchMovieTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final searchResultMovie = watch(movieProvider);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProviderScope(overrides: [
                  movieScreenProvider.overrideWithValue(searchResultMovie)
                ], child: const MovieScreen())));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: CachedNetworkImage(
                        imageUrl: searchResultMovie.poster,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star, size: 16),
                            Text(
                              '${searchResultMovie.imdbRating}/10',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              searchResultMovie.title,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontSize: 18, color: Colors.white),
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
              child: Row(children: [
                Icon(
                  Icons.access_time,
                  size: 16,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                Text(searchResultMovie.runtime,
                    style: Theme.of(context).textTheme.overline?.copyWith(
                        color: Theme.of(context).colorScheme.secondary)),
              ])),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
