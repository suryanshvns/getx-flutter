import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("next page"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => {
              Get.back(),
            },
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.back(result: 'this is the data from the next page');
              },
              child: Container(
                color: Colors.yellow,
                width: 100,
                height: 100,
                // child: Text(Get.arguments),
              ),
            ),
            const Text("back to previous page ")
          ],
        )),
      ),
    );
  }
}
