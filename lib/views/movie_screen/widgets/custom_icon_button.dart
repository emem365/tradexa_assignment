import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final Color color;
  final void Function() onTap;
  const CustomIconButton(
      {Key? key,
      required this.icon,
      required this.onTap,
      this.color = Colors.white54})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(24)),
        width: 70,
        height: 70,
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}