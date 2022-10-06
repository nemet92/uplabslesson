import 'package:flutter/material.dart';
import 'package:uplabslesson/appPath.dart';
import 'package:uplabslesson/color_proje.dart';
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                textProje.login,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              customSizedBox(context),
              RichText(
                text: TextSpan(children: [
                  _customTextSpan(context, textProje.textSpan1,
                      const TextStyle(color: ColorProje.colorSpan1)),
                  _customTextSpan(context, textProje.textSpan2,
                      const TextStyle(color: ColorProje.colorSpan2)),
                  _customTextSpan(context, textProje.textSpan3,
                      const TextStyle(color: ColorProje.colorSpan1))
                ]),
              ),
              customSizedBox(context),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: textProje.textFormFiledUsername,
                  suffixIcon: AppPath.textFormLoginIcon,
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
              customSizedBox(context),
              TextFormField(
                  decoration: const InputDecoration(
                hintText: textProje.textFormFiledPassword,
                suffixIcon: AppPath.textFormPasswordIcon,
                enabledBorder: OutlineInputBorder(),
              )),
              customSizedBox(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      value: checkBoxValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkBoxValue = newValue!;
                        });
                      }),
                  const Text(textProje.rememberMe),
                  const Spacer(),
                  const Text(textProje.forgotPassword)
                ],
              ),
              customSizedBox(context),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(textProje.elevatedText))),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(textProje.orLoginWith),
                  Spacer(),
                  Icon(Icons.facebook),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.facebook),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.facebook),
                  SizedBox(
                    width: 5,
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
