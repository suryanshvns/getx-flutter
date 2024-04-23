import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/pages/secondPage.dart';

class Binding extends StatelessWidget {
  const Binding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("binding class"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(SecondPage());
          },
          child: const Text("navigate to second page"),
        ),
      ),
    );
  }
}
