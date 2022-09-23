import 'package:flutter_getx_template/app/modules/Registration_module/policy_pages/controllers/terms_and_cond_controller.dart';
import 'package:get/get.dart';

class TermsAndCondtionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsandConditionController>(
      () => TermsandConditionController(),
    );
  }
}
