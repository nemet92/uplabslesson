import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    required this.color,
    required this.scale,
    required this.imageAsset,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final Color color;
  final double scale;
  final String imageAsset;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          height: 30,
          width: 50,
          child: Image.asset(
            imageAsset,
            scale: scale,
          )),
    );
  }
}
