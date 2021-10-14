import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tradexa_assignment/controllers/home_controller.dart';
import 'package:tradexa_assignment/controllers/providers.dart';
import 'package:tradexa_assignment/views/home/widgets/search_bar.dart';
import 'package:tradexa_assignment/views/home/widgets/search_movie_tile.dart';

class HomeSearchLayout extends StatelessWidget {
  const HomeSearchLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<HomeController>(
      provider: homeControllerProvider,
      onChange: (context, homeController) {
        if (homeController.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(homeController.error.toString())));
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 125,
            ),
            SearchBar(),
            const SizedBox(height: 30),
            Consumer(
              builder:
                  (BuildContext context, ScopedReader watch, Widget? child) {
                final controller = watch(homeControllerProvider);
                return controller.isLoading
                    ?  Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.secondary))
                    : controller.searchResponse == null
                        ? Text(
                            'Search for a movie!',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(color: Colors.white70),
                            textAlign: TextAlign.center,
                          )
                        : Expanded(
                            child: ListView.builder(
                            itemBuilder: (context, index) => ProviderScope(
                                overrides: [
                                  movieProvider.overrideWithValue(
                                      controller.searchResponse!.results[index])
                                ],
                                child: const SearchMovieTile()),
                            itemCount:
                                controller.searchResponse!.results.length,
                          ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
