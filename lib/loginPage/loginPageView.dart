import 'package:flutter/material.dart';
import 'package:uplabslesson/appPath.dart';
import 'package:uplabslesson/appSize.dart';
import 'package:uplabslesson/appColor.dart';
import 'package:uplabslesson/loginPage/widget/customElevatedButton.dart';
import 'package:uplabslesson/loginPage/widget/customIcon.dart';
import 'package:uplabslesson/loginPage/widget/customText.dart';
import 'package:uplabslesson/loginPage/widget/customTextFormFiled.dart';
import 'package:uplabslesson/text_proje.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

bool checkBoxValue = true;

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSize.myAppPagePadding,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                title: AppText.login,
                fontWeight: FontWeight.bold,
                fontSize: AppSize.loginSize,
              ),
              customSizedBox(context),
              RichText(
                text: TextSpan(children: [
                  _customTextSpan(context, AppText.textSpan1,
                      const TextStyle(color: AppColor.colorSpan1)),
                  _customTextSpan(context, AppText.textSpan2,
                      const TextStyle(color: AppColor.colorSpan2)),
                  _customTextSpan(context, AppText.textSpan3,
                      const TextStyle(color: AppColor.colorSpan1))
                ]),
              ),
              customSizedBox(context),
              const CustomTextFormFiled(
                hintText: AppText.textFormFiledUsername,
                sufficIcon: AppPath.textFormLoginIcon,
              ),
              customSizedBox(context),
              const CustomTextFormFiled(
                  hintText: AppText.textFormFiledPassword,
                  sufficIcon: AppPath.textFormPasswordIcon),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(
                      value: checkBoxValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkBoxValue = newValue!;
                        });
                      }),
                  const CustomText(title: AppText.rememberMe),
                  const Spacer(),
                  const CustomText(title: AppText.forgotPassword)
                ],
              ),
              customSizedBox(context),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: const CustomElevatedButton()),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(title: AppText.orLoginWith),
                  CustomIcon(
                    color: AppColor.iconColorFacebook,
                    imageAsset: AppPath.iconFacebook,
                    scale: AppSize.customIconScale,
                    onPressed: () {},
                  ),
                  CustomIcon(
                    color: AppColor.iconColorTwiter,
                    imageAsset: AppPath.iconTwiter,
                    scale: AppSize.customIconScale,
                    onPressed: () {},
                  ),
                  CustomIcon(
                    color: AppColor.iconColorGoogle,
                    imageAsset: AppPath.iconGoogle,
                    scale: AppSize.customIconScale,
                    onPressed: () {},
                  ),
                ],
              )
            ]),
      ),
    );
  }

  SizedBox customSizedBox(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.02,
    );
  }

  TextSpan _customTextSpan(
    BuildContext context,
    textSpan,
    textStyle,
  ) {
    return TextSpan(style: textStyle, text: textSpan);
  }
}
