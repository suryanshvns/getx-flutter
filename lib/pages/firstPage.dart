import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("second?a=1&b=2");
                },
                child: const Text("navigate to second page")),
          ],
        ),
      ),
    );
  }
}
