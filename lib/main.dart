import 'package:flutter/material.dart';
import 'package:uplabslesson/loginPage/loginPageView.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) => Material(
        color: Colors.black,
        child: Center(
          child: Text(
            details.exception.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPageView(),
    );
  }
}
