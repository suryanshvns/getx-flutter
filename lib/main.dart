import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/pages/language.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Use MaterialApp instead of GetMaterialApp
      debugShowCheckedModeBanner: false,
      home: Language(),
    );
  }
}
