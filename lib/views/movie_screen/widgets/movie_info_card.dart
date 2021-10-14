import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradexa_assignment/controllers/providers.dart';
import 'package:tradexa_assignment/views/movie_screen/widgets/custom_card.dart';

class MovieInfoCard extends ConsumerWidget {
  const MovieInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final movie = watch(movieScreenProvider);
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Plot',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 4.0),
          Text(
            movie.plot,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(fontSize: 16, color: Colors.white70),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Director',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 4.0),
          Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white54),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  movie.director,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 16, color: Colors.white70),
                ),
              ),
            ),
          ]),
          const SizedBox(height: 16.0),
          Text(
            'Actor',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 4.0),
          Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white54),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  movie.actors,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 16, color: Colors.white70),
                ),
              ),
            ),
          ]),
          const SizedBox(height: 16.0),
          Text(
            'Writer',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 4.0),
          Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white54),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  movie.writer,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 16, color: Colors.white70),
                ),
              ),
            ),
          ]),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
