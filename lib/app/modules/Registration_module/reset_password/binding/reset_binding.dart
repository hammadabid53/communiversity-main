import 'package:flutter_getx_template/app/modules/Registration_module/reset_password/controller/reset_controller.dart';

import 'package:get/get.dart';

class ResetScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetScreenController>(
      () => ResetScreenController(),
    );
  }
}
