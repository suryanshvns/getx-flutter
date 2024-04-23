import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/pages/secondPage.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX serivices"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(SecondPage());
                },
                child: Text("navigate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
