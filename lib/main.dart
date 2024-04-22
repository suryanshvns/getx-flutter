import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_tutorial/movies.dart';
import 'package:getx_tutorial/pages/firstPage.dart';
import 'package:getx_tutorial/pages/secondPage.dart';
import 'package:getx_tutorial/pages/thirdPage.dart';
import 'package:getx_tutorial/pages/unknownPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Movies(), // Set Movies widget as the default starting page
      defaultTransition: Transition.rightToLeft,
      getPages: [
        GetPage(name: "/first", page: () => const FirstPage()),
        GetPage(name: "/second", page: () => const SecondPage()),
        GetPage(name: "/third", page: () => const ThirdPage()),
      ],
      unknownRoute: GetPage(name: "/unknown", page: () => const UnknownPage()),
    );
  }
}
