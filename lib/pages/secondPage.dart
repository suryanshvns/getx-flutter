import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.parameters["a"] ?? ""),
            Text(Get.parameters["b"] ?? ""),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("third");
                },
                child: const Text("navigate to third page")),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("back"))
          ],
        ),
      ),
    );
  }
}
