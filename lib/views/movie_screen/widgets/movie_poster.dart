import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradexa_assignment/controllers/providers.dart';
import 'package:tradexa_assignment/views/movie_screen/widgets/custom_icon_button.dart';
import 'package:tradexa_assignment/views/movie_screen/widgets/image_background.dart';

class MoviePoster extends ConsumerWidget {
  const MoviePoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final movie = watch(movieScreenProvider);
    return Stack(
      children: [
        ImageBackground(imageUrl: movie.poster),
        Positioned(
          left: 50,
          top: 50,
          child: CustomIconButton(
              icon: const Icon(Icons.arrow_back_ios), onTap: () {}),
        ),
        Positioned(
            left: 50,
            bottom: 50,
            right: 50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.white70),
                ),
                Text(
                  movie.genre,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontSize: 16, color: Colors.white54),
                )
              ],
            )),
      ],
    );
  }
}