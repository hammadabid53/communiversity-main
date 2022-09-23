import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignupScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupScreenController>(
      () => SignupScreenController(),
    );
  }
}
