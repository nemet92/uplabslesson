import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    required this.hintText,
    required this.sufficIcon,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final Icon sufficIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: sufficIcon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder()),
    );
  }
}
