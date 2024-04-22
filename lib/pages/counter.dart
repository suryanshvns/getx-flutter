import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  var count = 0.obs; // this .obs is used to make the variable reactive

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Obx example"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "$count",
                style: const TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                count++;
              },
              child: const Text("+"),
            ),
            ElevatedButton(
              onPressed: () {
                count--;
              },
              child: const Text("-"),
            )
          ],
        ),
      ),
    );
  }
}
