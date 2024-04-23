import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/pages/binding.dart';
import 'package:getx_tutorial/pages/getx_services.dart';
import 'package:getx_tutorial/pages/home.dart';
import 'package:getx_tutorial/pages/language.dart';
import 'package:getx_tutorial/user/user_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Use MaterialApp instead of GetMaterialApp
      debugShowCheckedModeBanner: false,
      // home: HomeHello(),
      // home: Services(),
      // home: Binding(),
      home: UserView(),
    );
  }
}
