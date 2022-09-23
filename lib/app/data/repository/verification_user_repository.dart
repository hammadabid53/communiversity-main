import 'dart:convert' as convert;
import 'dart:developer';
import 'package:flutter_getx_template/app/core/utils/network_strings.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/otp_screen/model/verify_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../core/base/dio_client/dio_client.dart';
import '../../modules/Registration_module/otp_screen/controller/verifyotp_controller.dart';
import '../listeners.dart/listeners.dart';

class VerifyotpRepository extends ResponseListener {
  VerifyotpRepository();

  void userVerification({context, String? userID, String? otp}) async {
    Map<String, dynamic> rawData = {
      "user_id": userID,
      "otp": otp,
    };
    log(rawData.toString());

    var response = await DioClient().postRequest(
      endPoint: NetworkStrings.verification,
      data: rawData,
      responseListener: this,
    );

    var jsonResponse = response!.data;

    if (response.statusCode == NetworkStrings.SUCCESS_CODE_200) {
      if (jsonResponse['status'] == NetworkStrings.API_SUCCESS_STATUS) {
        // When Status Code is 200 and api_status is 1
        Verifyotpcontroller.v.verifyotp.value =
            VerifyOtpModel.fromJson(convert.jsonDecode(response.toString()));
        print("Dekho");
        Verifyotpcontroller.v.userLocal.write('localUser', response.toString());
        print(Verifyotpcontroller.v.verifyotp.value.msg);
        SharedPreferences storage = await SharedPreferences.getInstance();
        storage.setString(
            "userID", Verifyotpcontroller.v.verifyotp.value.msg.toString());
        storage.setString(
            "bearer", Verifyotpcontroller.v.verifyotp.value.token.toString());
        token_bearer = storage.getString("bearer");
        print(token_bearer);
      }
    } else {
      // Utils.showToast(message: jsonResponse['message']);
    }
  }
}
