import 'dart:convert' as convert;
import 'dart:developer';
import 'dart:io';
import 'package:flutter_getx_template/app/core/utils/network_strings.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/login_screen/model/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/base/dio_client/dio_client.dart';
import '../../modules/Registration_module/login_screen/controller/login_controller.dart';
import '../../service/firebase_messaging_service.dart';
import '../listeners.dart/listeners.dart';

class SignInRepository extends ResponseListener {
  SignInRepository();

  void userLogin({String? email, String? password}) async {
    Map<String, dynamic> rawData = {
      "user_email": email,
      "user_password": password,
      "user_device_type": Platform.isIOS ? "ios" : "android",
      "user_device_token":
          await FirebaseMessagingService().getToken() ?? "user_device_token",
    };
    log(rawData.toString());

    var response = await DioClient().postRequest(
      endPoint: NetworkStrings.signin,
      data: rawData,
      responseListener: this,
      // isHeaderRequire: true
    );

    var jsonResponse = response!.data;

    if (response.statusCode == NetworkStrings.SUCCESS_CODE_200) {
      if (jsonResponse['status'] == NetworkStrings.API_SUCCESS_STATUS) {
        // When Status Code is 200 and api_status is 1
        LoginScreenController.i.userData.value =
            LoginModel.fromJson(convert.jsonDecode(response.toString()));
        print("Dekho");
        // Utils.showToast(message: AuthController.i.appUser.value.message);

        LoginScreenController.i.userLocal
            .write('localUser', response.toString());
        print(LoginScreenController.i.userData.value.msg);
        SharedPreferences storage = await SharedPreferences.getInstance();
        storage.setString("userID",
            LoginScreenController.i.userData.value.data!.id.toString());

        storage.setString(
            "bearer",
            LoginScreenController.i.userData.value.data!.userAuthentication
                .toString());
        token_bearer = storage.getString("bearer");
        print(token_bearer);

        // Get.offAll(()=>BottomBarScreen(index: 1,));
        // Utils.showToast(message: jsonResponse['message']);
        // BaseServiceUI().showFlushBar(context, 'User register successfully');

      }
    } else {
      print(token_bearer);
      // Utils.showToast(message: jsonResponse['message']);
    }

    // DioClient().validateResponse(
    //     response: response,
    //     bodyFunction: () async {
    //       // AuthController.i.userData.value = UserModel.fromJson(convert.jsonDecode(response.toString()));
    //       // print("Dekho");
    //       // // Utils.showToast(message: AuthController.i.appUser.value.message);
    //       //
    //       // print(AuthController.i.userData.value.data!.email);
    //       // SharedPreferences storage = await SharedPreferences.getInstance();
    //       // storage.setString(
    //       //     "userID", AuthController.i.userData.value.data!.id.toString());
    //       // storage.setString(
    //       //     "bearer", AuthController.i.userData.value.accessToken.toString());
    //       // token_bearer = storage.getString("bearer");
    //       // print(token_bearer);
    //       //
    //       // Get.offAll(BottomBarScreen(index: 1,));
    //       // Utils.showToast(message: 'User register successfully');
    //       // // BaseServiceUI().showFlushBar(context, 'User register successfully');
    //       //
    //
    //     });
  }
}
