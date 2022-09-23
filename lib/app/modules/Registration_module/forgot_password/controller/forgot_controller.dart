import 'package:get/get.dart';

import '../../../../data/repository/forgot_repository.dart';
import '../model/forgot_password.dart';
import '/app/core/base/base_controller.dart';

class ForgotPasswordController extends BaseController {
  static ForgotPasswordController get f => Get.find();

  Rx<ForgotPassword> forgotmodel = ForgotPassword().obs;
  void forgotPassword(
    String? email,
  ) {
    ForgotPasswordRepository().forgotPassword(email: email);
  }
}
