import 'package:alphagbc/core/constant/color.dart';
import 'package:alphagbc/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cardTheme: const CardTheme(
          color: AppColor.white,
        ),
        canvasColor: AppColor.white,
        cardColor: AppColor.white,
        scaffoldBackgroundColor: AppColor.white,
        fontFamily: "Libre_Baskerville",
      ),
      title: 'Alpha GBC',
      getPages: routes,
    );
  }
}
