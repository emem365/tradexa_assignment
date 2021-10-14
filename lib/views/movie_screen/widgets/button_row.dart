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
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Download is unimplmented')));
            },
            color: Theme.of(context).colorScheme.primaryVariant),
        CustomIconButton(
            icon: const Icon(Icons.favorite_border),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Favorite is unimplmented')));
            },
            color: Theme.of(context).colorScheme.primaryVariant),
        CustomIconButton(
            icon: const Icon(Icons.share),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Share is unimplmented')));
            },
            color: Theme.of(context).colorScheme.primaryVariant),
      ],
    );
  }
}