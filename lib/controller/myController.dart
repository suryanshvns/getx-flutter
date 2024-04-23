import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
//simple state manager

  incrementCounter() {
    count++;
    update(['123']);
  }

  decrementCounter() {
    count--;
    update(['123']);
  }

  @override
  void onInit() {
    //called every time when count value is changed
    // ever(count, (callback) => print("ever"));

    //called once when the first time a variable changes
    // once(count, (callback) => print("once"));

    debounce(count, (callback) => print("debounce"),
        time: Duration(seconds: 5));
    super.onInit();
  }
}
