import 'package:get/get.dart';
import 'package:getx_tutorial/service/api_service.dart';
import 'package:getx_tutorial/user_model/user_model.dart';

class UserController extends GetxController {
  var isLoading = true.obs;

  var userList = <UserModel>[].obs;
  fetctUsers() async {
    try {
      isLoading(true);
      var data = await ApiService().fetchUserData();
      userList.addAll(data);
    } catch (e) {
      print("error in finding data ${e}");
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    fetctUsers();
    super.onInit();
  }
}
