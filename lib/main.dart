import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_tutorial/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Getx Routing"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                var a = await Get.to(
                  () => NextPage(),
                  // arguments: "This is the data from previous page "
                );
                print(a);
              },

              // onTap: () {
              //   Get.to(() => const NextPage(),
              //       curve: Curves.bounceInOut,
              //       transition: Transition.rightToLeft);
              // },
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
            const Text("navigate to next page")
          ],
        )),
      ),
    );
  }
}
