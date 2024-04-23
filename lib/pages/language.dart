// langiageview.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/languageController.dart';
import 'package:getx_tutorial/strings.dart';

class Language extends StatelessWidget {
  var controller = Get.put(LangController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Strings(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Localization"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<LangController>(
                builder: (_) => Text(
                  "How are you".tr,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocal("hi", "IN");
                },
                child: const Text("Hindi"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocal("en", "US");
                },
                child: const Text("English"),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocal('fr', "FR");
                },
                child: const Text("French"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
