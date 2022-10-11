import 'package:flutter/material.dart';
import 'package:uplabslesson/appColor.dart';
import 'package:uplabslesson/loginPage/widget/customText.dart';
import 'package:uplabslesson/text_proje.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(AppColor.elevatedButtonColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ))),
        onPressed: () {},
        child: const CustomText(
          title: AppText.elevatedText,
          fontWeight: FontWeight.bold,
        ));
  }
}
