import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: const [
          MoviePoster(),
          ButtonRow(),
          RatingsCard(),
          MetadataCard(),
          MovieInfoCard(),
        ],
      ),
    );
  }
}