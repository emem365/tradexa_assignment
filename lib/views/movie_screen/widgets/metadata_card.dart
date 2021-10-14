import 'package:flutter/material.dart';
import 'package:tradexa_assignment/models/movie.dart';
import 'package:tradexa_assignment/views/movie_screen/widgets/custom_card.dart';

class MetadataCard extends StatelessWidget {
  final Movie movie;
  const MetadataCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Text(
                '  ${movie.year}',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontSize: 20, color: Colors.white70),
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
              Text(
                '  ${movie.country}',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontSize: 20, color: Colors.white70),
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
              Text(
                '  ${movie.runtime}',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontSize: 20, color: Colors.white70),
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
              Text(
                '  ${movie.language}',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontSize: 20, color: Colors.white70),
              )
            ],
          ),
        ),
      ],
    ));
  }
}