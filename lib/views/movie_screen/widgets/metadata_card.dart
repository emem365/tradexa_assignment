import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradexa_assignment/controllers/providers.dart';
import 'package:tradexa_assignment/views/movie_screen/widgets/custom_card.dart';

class MetadataCard extends ConsumerWidget {
  const MetadataCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final movie = watch(movieScreenProvider);
    return CustomCard(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Icon(
                Icons.calendar_today,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Expanded(
                child: Text(
                  '  ${movie.year}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 20, color: Colors.white70),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Icon(
                Icons.public,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Expanded(
                child: Text(
                  '  ${movie.country}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 20, color: Colors.white70),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Icon(
                Icons.access_time_sharp,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Expanded(
                child: Text(
                  '  ${movie.runtime}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 20, color: Colors.white70),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Icon(
                Icons.volume_up,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Expanded(
                child: Text(
                  '  ${movie.language}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 20, color: Colors.white70),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}