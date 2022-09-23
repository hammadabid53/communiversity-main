import 'package:flutter_getx_template/app/modules/Registration_module/login_screen/model/login_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../data/repository/login_repository.dart';

class LoginScreenController extends GetxController {
  static LoginScreenController get i => Get.find();
  Rx<LoginModel> userData = LoginModel().obs;

  final userLocal = GetStorage();

  void userLogin(
    String? email,
    String password,
  ) {
    SignInRepository().userLogin(password: password, email: email);
  }
}
