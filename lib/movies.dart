import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/movie.dart';

class Movies extends StatelessWidget {
  var movie = Movie(name: 'wanted', ticket: 100).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Another obx example"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${movie.value.name}",
                style: const TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  movie.value.name = "suryansh";
                  movie.refresh();
                },
                child: const Text("upper"))
          ],
        ),
      ),
    );
  }
}
