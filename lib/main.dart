import 'package:flutter/material.dart';
import 'package:tutorial_app/screen/login.dart';


import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tutorial App',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.homePageBackground,
      ),
      home: const LogIn(),
    );
  }
}