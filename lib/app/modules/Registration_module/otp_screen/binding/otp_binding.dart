import 'package:flutter_getx_template/app/modules/Registration_module/otp_screen/controller/verifyotp_controller.dart';
import 'package:get/get.dart';

class OtpScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Verifyotpcontroller>(
      () => Verifyotpcontroller(),
    );
  }
}
