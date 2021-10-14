import 'package:flutter/material.dart';
import 'package:tradexa_assignment/views/movie_screen/widgets/custom_icon_button.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomIconButton(
            icon: const Icon(Icons.arrow_downward),
            onTap: () {},
            color: Theme.of(context).colorScheme.primaryVariant),
        CustomIconButton(
            icon: const Icon(Icons.favorite_border),
            onTap: () {},
            color: Theme.of(context).colorScheme.primaryVariant),
        CustomIconButton(
            icon: const Icon(Icons.share),
            onTap: () {},
            color: Theme.of(context).colorScheme.primaryVariant),
      ],
    );
  }
}