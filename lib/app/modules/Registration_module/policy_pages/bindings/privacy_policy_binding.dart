import 'package:flutter_getx_template/app/modules/Registration_module/policy_pages/controllers/privacy_controller.dart';
import 'package:get/get.dart';

class PrivacyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrivacyController>(
      () => PrivacyController(),
    );
  }
}
