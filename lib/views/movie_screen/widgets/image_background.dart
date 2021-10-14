import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageBackground extends StatelessWidget {
  final String imageUrl;

  const ImageBackground({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.transparent],
        ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      },
      blendMode: BlendMode.dstIn,
      child: CachedNetworkImage(
        width: MediaQuery.of(context).size.width,
        imageUrl: imageUrl,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}