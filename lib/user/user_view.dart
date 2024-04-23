import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/user/user_controller.dart';

class UserView extends StatelessWidget {
  UserView({super.key});

  var userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (userController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: userController.userList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                color: Colors.lightBlueAccent,
                child: ListTile(
                  title: Text(userController.userList[index].name),
                  subtitle: Text(userController.userList[index].email),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
