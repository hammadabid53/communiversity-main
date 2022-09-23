import 'package:flutter_getx_template/app/modules/Registration_module/change_password/controller/change_password_controller.dart';

import 'package:get/get.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordController>(
      () => ChangePasswordController(),
    );
  }
}
