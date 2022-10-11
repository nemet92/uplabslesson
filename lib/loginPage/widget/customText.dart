import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.title,
    this.fontWeight,
    this.fontSize,
  }) : super(key: key);
  final String title;
  final fontWeight;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontWeight: fontWeight, fontSize: fontSize),
    );
  }
}
