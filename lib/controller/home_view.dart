import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/myController.dart';

class Counting extends StatelessWidget {
  // final MyController _myController = Get.put(MyController(), tag: '1');
  var myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("workers in getx"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetBuilder<MyController>(
            //   init: MyController(),
            //   id: "123",
            //   builder: (myController) => Text(
            //     "${myController.count}",
            //     style: const TextStyle(fontSize: 30),
            //   ),
            // ),
            // GetBuilder<MyController>(
            //   init: MyController(),
            //   builder: (myController) => Text(
            //     "${myController.count}",
            //     style: const TextStyle(fontSize: 30),
            //   ),
            // ),
            Obx(() => Text(
                  "${myController.count}",
                  style: const TextStyle(fontSize: 20),
                )),
            ElevatedButton(
              onPressed: () {
                var myController = Get.find<MyController>();
                myController.incrementCounter();
              },
              child: const Text("increment"),
            ),
            ElevatedButton(
              onPressed: () {
                var myController = Get.find<MyController>();
                myController.decrementCounter();
              },
              child: const Text("decrement"),
            ),
          ],
        ),
      ),
    );
  }
}
