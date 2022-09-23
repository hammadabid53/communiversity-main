import 'dart:convert' as convert;
import 'dart:developer';

import 'package:flutter_getx_template/app/core/utils/network_strings.dart';
import 'package:flutter_getx_template/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../core/base/dio_client/dio_client.dart';
import '../../modules/Registration_module/forgot_password/controller/forgot_controller.dart';
import '../../modules/Registration_module/forgot_password/model/forgot_password.dart';
import '../listeners.dart/listeners.dart';

class ForgotPasswordRepository extends ResponseListener {
  ForgotPasswordRepository();

  void forgotPassword({context, String? email}) async {
    Map<String, dynamic> rawData = {
      "user_email": email,
    };
    log(rawData.toString());

    var response = await DioClient().postRequest(
      endPoint: NetworkStrings.forgotPassword,
      data: rawData,
      responseListener: this,
    );

    // Utils.showToast(message: response!.data['message']);

    var jsonResponse = response?.data;

    if (response?.statusCode == NetworkStrings.SUCCESS_CODE_200) {
      if (jsonResponse['status'] == NetworkStrings.API_SUCCESS_STATUS) {
        // When Status Code is 200 and api_status is 1
        ForgotPasswordController.f.forgotmodel.value =
            ForgotPassword.fromJson(convert.jsonDecode(response.toString()));
        print("Dekho");
        Get.to(Routes.OTP_VERFICATION_SCREEN_ROUTE);
        // AppNavigation.navigateTo(context, VerificationScreen(userData: email,));
      }
    } else {
      // Utils.showToast(message: jsonResponse['message']);
    }
  }
}
