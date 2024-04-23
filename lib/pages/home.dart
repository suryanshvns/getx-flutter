import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/myController.dart';

class HomeHello extends StatelessWidget {
  var a = Get.put(MyController(), tag: "1");
  var b = Get.put(MyController(), tag: "2");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency Injection"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                // var abc = Get.find<MyController>();
                // print(abc);
                print(Get.find<MyController>(tag: "1").hashCode);
                print(Get.find<MyController>(tag: "2").hashCode);

                //   print(a.hashCode);
                //   print(b.hashCode);
              },
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
