import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getP;

class DioInterceptors extends Interceptor {
  // @override
  // void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
  //   if (options.path != (Constants.API_BASE_URL + Constants.SAVE_MESSAGE))
  //     Utils.showDialogs(
  //       context: RedrockMedicalSupply.globalKey.currentContext!,
  //       barrierDismissible: false,
  //       widget: Center(
  //         child: CircularProgressIndicator(color: ColorCodes.PRIMARY_COLOR),
  //       ),
  //     );
  //   return super.onRequest(options, handler);
  // }

  // @override
  // void onResponse(Response response, ResponseInterceptorHandler handler) {
  //   if (response.requestOptions.path !=
  //       (Constants.API_BASE_URL + Constants.SAVE_MESSAGE))
  //     Navigation.pop(RedrockMedicalSupply.globalKey.currentContext!);
  //   return super.onResponse(response, handler);
  // }

  // @override
  // void onError(DioError dioError, ErrorInterceptorHandler handler) {
  //   if (dioError.requestOptions.path !=
  //       (Constants.API_BASE_URL + Constants.SAVE_MESSAGE))
  //     Navigation.pop(RedrockMedicalSupply.globalKey.currentContext!);
  //
  //   Response? response = dioError.response;
  //
  //   String? errorMessage = _getErrorMessage(response: response);
  //
  //   Utils.showToast(message: errorMessage ?? dioError.message.toString());
  //
  //   // when status code= 401
  //   if (dioError.response?.statusCode == Constants.UNAUTHORIZED_USER_CODE) {
  //     _invalidAuthorization();
  //   }
  //
  //   return null;
  // }

  // void _invalidAuthorization() {
  //   Utils.clearPreferences();
  //   getP.Get.offAllNamed(Constants.SIGN_IN_ROUTE);
  // }

  String? _getErrorMessage({Response? response}) {
    String? errorMessage;

    if (response?.data is Map<String, dynamic>) {
      // Checking that API is returning JSON Object instead of crashing HTML
      if (response?.data != null) {
        if (response?.data.containsKey("message")) {
          errorMessage = response?.data["message"];
        }
      } else {
        errorMessage = response?.statusMessage;
      }
    }
    return errorMessage;
  }
}
