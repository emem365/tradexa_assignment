import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset('assets/bg_bloop.png')),
          const Positioned.fill(child: HomeSearchLayout()),
        ],
      ),
    );
  }
}