import 'dart:convert' as convert;
import 'dart:developer';
import 'dart:io';
import 'package:flutter_getx_template/app/core/utils/network_strings.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/model/signup_model.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart' as dd;

import 'package:http_parser/http_parser.dart';

import '../../core/base/dio_client/dio_client.dart';
import '../../modules/Registration_module/signup_screen/controller/signup_controller.dart';
import '../../routes/app_pages.dart';
import '../../service/firebase_messaging_service.dart';
import '../listeners.dart/listeners.dart';

class SignupRepository extends ResponseListener {
  SignupRepository();

  void userSignup(
      {String? bio,
      String? program,
      String? email,
      String? confirmPassword,
      String? password,
      String? name,
      String? useraddress,
      File? userimage}) async {
    dd.FormData rawData;

    rawData = dd.FormData.fromMap({
      "user_name": name,
      "user_bio": bio,
      "program": program,
      "user_email": email,
      "user_password": password,
      "confirm_password": confirmPassword,
      "user_address": useraddress,
      "user_Image": userimage != null
          ? await dd.MultipartFile.fromFile(
              userimage.path,
              contentType: MediaType('image', 'png'),
            )
          : null,
      "user_device_type": Platform.isIOS ? "ios" : "android",
      "user_device_token":
          await FirebaseMessagingService().getToken() ?? "user_device_token",
    });
    log(rawData.toString());

    var response = await DioClient().postRequest(
      endPoint: NetworkStrings.signup,
      data: rawData,
      responseListener: this,
    );

    var jsonResponse = response!.data;

    if (response.statusCode == NetworkStrings.SUCCESS_CODE_201) {
      if (jsonResponse['status'] == NetworkStrings.API_SUCCESS_STATUS) {
        // When Status Code is 200 and api_status is 1
        SignupScreenController.s.signupData.value =
            SignupModel.fromJson(convert.jsonDecode(response.toString()));
        print("Dekho");
        // Utils.showToast(message: AuthController.i.appUser.value.message);

        print(SignupScreenController.s.signupData.value.data?.user?.userEmail);
        SharedPreferences storage = await SharedPreferences.getInstance();
        storage.setString(
            "userID",
            SignupScreenController.s.signupData.value.data!.user!.id
                .toString());
        storage.setString(
            "userimage",
            SignupScreenController.s.signupData.value.data!.user!.userImage
                .toString());
        storage.setString("bearer",
            SignupScreenController.s.signupData.value.data!.token.toString());
        token_bearer = storage.getString("bearer");

        print(token_bearer);
        Get.toNamed(Routes.OTP_VERFICATION_SCREEN_ROUTE);
        // Get.to(()=>VerificationScreen(
        //   emailVerificationCheck: false,
        // ));
        //Utils.showToast(message: jsonResponse['message']);

        // BaseServiceUI().showFlushBar(context, 'User register successfully');

      }
    } else {
      //Utils.showToast(message: jsonResponse['message']);
    }
  }
}
