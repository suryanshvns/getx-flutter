import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/myController.dart';

class Counting extends StatelessWidget {
  final MyController _myController = Get.put(MyController());

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
                "${_myController.count}",
                style: const TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _myController.incrementCounter();
              },
              child: const Text("increment"),
            ),
            ElevatedButton(
              onPressed: () {
                _myController.decrementCounter();
              },
              child: const Text("decrement"),
            ),
          ],
        ),
      ),
    );
  }
}
