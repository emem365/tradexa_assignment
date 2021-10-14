import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradexa_assignment/controllers/providers.dart';
import 'package:tradexa_assignment/views/movie_screen/widgets/custom_card.dart';

class RatingsCard extends ConsumerWidget {
  const RatingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final movie = watch(movieScreenProvider);
    final rating = double.parse(movie.imdbRating);
    return CustomCard(
      child: Column(
        children: [
          Row(
            children: [
              RatingBarIndicator(
                itemSize: 32,
                rating: rating / 2,
                itemBuilder: (context, i) => Icon(
                  Icons.star,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                itemCount: 5,
                unratedColor: Theme.of(context).colorScheme.secondaryVariant,
              ),
              const Spacer(),
              Text(
                movie.imdbRating,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              )
            ],
          ),
          ...movie.ratings.map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Text(
                    e.source,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(fontSize: 20, color: Colors.white70),
                  ),
                  const Spacer(),
                  Text(
                    e.value,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(fontSize: 20, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}