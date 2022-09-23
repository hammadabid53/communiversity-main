import 'package:flutter_getx_template/app/modules/Registration_module/otp_screen/model/verify_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../data/repository/verification_user_repository.dart';
import '/app/core/base/base_controller.dart';

class Verifyotpcontroller extends BaseController {
  static Verifyotpcontroller get v => Get.find();
  Rx<VerifyOtpModel> verifyotp = VerifyOtpModel().obs;

  final userLocal = GetStorage();
  void userVerification(String? userID, String? otp) {
    VerifyotpRepository().userVerification(userID: userID, otp: otp);
  }
}
