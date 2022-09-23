import 'dart:async';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_getx_template/app/core/utils/network_strings.dart';

import '../../../data/listeners.dart/listeners.dart';
import '../../../service/connectivity_manager.dart';
import 'dio_interceptor.dart';

class DioClient {
  // DioClient({this.loading=false});
  // bool? loading;
  static Dio? _dio;

  static DioClient? _dioClient;

  static ConnectivityManager? _connectivityManager;

  static CancelToken? _cancelToken;

  DioClient._createInstance();

  factory DioClient() {
    // factory with constructor, return some value
    if (_dioClient == null) {
      _dioClient = DioClient
          ._createInstance(); // This is executed only once, singleton object

      _getDio();

      _connectivityManager = ConnectivityManager();

      _cancelToken ??= CancelToken();
    }
    return _dioClient!;
  }

  static void _getDio() {
    _dio ??= Dio();
     (_dio?.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
         (HttpClient dioClient) {
       dioClient.badCertificateCallback =
           ((X509Certificate cert, String host, int port) => true);
       return dioClient;
     };
    _dio?.interceptors
        .add(LogInterceptor(responseBody: true, requestBody: true));

    _dio?.interceptors.add(DioInterceptors());
  }

  ///-------------------- Get Request -------------------- ///
  Future<Response?> getRequest({
    String? endPoint,
    bool? isLoader,
    Map<String, dynamic>? queryParameters, ///////sssssssssss
    ResponseListener? responseListener,
    bool? isHeaderRequire,
  }) async {
    Response? response;

    if (await _connectivityManager!.isInternetConnected()) {
      //   EasyLoading.instance.userInteractions = false;
      //  isLoader==false?null:EasyLoading.show(status: 'Please wait...', dismissOnTap: true);
      try {
        response = await _dio!.get(NetworkStrings.API_BASE_URL + endPoint!,
            queryParameters: queryParameters,
            cancelToken: _cancelToken,
            options: Options(
                headers: _setHeader(isHeaderRequire: isHeaderRequire),
                validateStatus: (status) {
                  return status! < 1000;
                }
                // sendTimeout: 90,
                ));
      } on TimeoutException catch (e) {
        _onTimeOut(message: e.message, responseListener: responseListener);
        print("$endPoint TimeOut: " + e.message!);
      }
    } else {
      _noInternetConnection(responseListener: responseListener);
    }
    // EasyLoading.dismiss();
    return response;
  }

  ///-------------------- Post Request -------------------- ///
  Future<Response?> postRequest({
    String? endPoint,
    dynamic data,
    ResponseListener? responseListener,
    bool? isHeaderRequire,
  }) async {
    Response? response;
    if (await _connectivityManager!.isInternetConnected()) {
      // EasyLoading.instance.userInteractions = false;
      // EasyLoading.show(status: 'Please wait...', dismissOnTap: true);
      try {
        response = await _dio!.post(NetworkStrings.API_BASE_URL + endPoint!,
            data: data,
            cancelToken: _cancelToken,
            options: Options(
                headers: _setHeader(isHeaderRequire: isHeaderRequire),
                validateStatus: (status) {
                  return status! < 1000;
                }
                //   sendTimeout: 90,
                ));
        print(NetworkStrings.API_BASE_URL + endPoint);
        print('response 200');
        print(response);
      } on TimeoutException catch (e) {
        _onTimeOut(message: e.message, responseListener: responseListener);
        print("$endPoint TimeOut: " + e.message!);
      }
    } else {
      _noInternetConnection(responseListener: responseListener);
    }
    // EasyLoading.dismiss();
    return response;
  }

  ///-------------------- Post Form Request -------------------- ///
  Future<Response?> postFormRequest(
      {String? endPoint,
      dynamic data,
      ResponseListener? responseListener,
      bool? isHeaderRequire,
      var file}) async {
    Response? response;
    if (await _connectivityManager!.isInternetConnected()) {
      // EasyLoading.instance.userInteractions = false;
      // EasyLoading.show(status: 'Please wait...', dismissOnTap: true);
      try {
        FormData formData;
        formData = FormData.fromMap({
          "file": await MultipartFile.fromFile(file, filename: 'aa'),
        });
        response = await _dio!.post(NetworkStrings.API_BASE_URL + endPoint!,
            data: formData,
            cancelToken: _cancelToken,
            options: Options(
                headers: _setHeader(isHeaderRequire: isHeaderRequire),
                sendTimeout: 90,
                validateStatus: (status) {
                  return status! < 1000;
                }));
        print(NetworkStrings.API_BASE_URL + endPoint);
      } on TimeoutException catch (e) {
        _onTimeOut(message: e.message, responseListener: responseListener);
        print("$endPoint TimeOut: " + e.message!);
      }
    } else {
      _noInternetConnection(responseListener: responseListener);
    }
    // EasyLoading.dismiss();
    return response;
  }

  ///-------------------- Delete Request -------------------- ///
  Future<Response?> deleteRequest({
    String? endPoint,
    Map<String, dynamic>? queryParameters,
    ResponseListener? responseListener,
    bool? isHeaderRequire,
  }) async {
    Response? response;
    if (await _connectivityManager!.isInternetConnected()) {
      try {
        response = await _dio!.delete(NetworkStrings.API_BASE_URL + endPoint!,
            queryParameters: queryParameters,
            cancelToken: _cancelToken,
            options: Options(
                headers: _setHeader(isHeaderRequire: isHeaderRequire),
                sendTimeout: 90,
                validateStatus: (status) {
                  return status! < 1000;
                }));
      } on TimeoutException catch (e) {
        _onTimeOut(message: e.message, responseListener: responseListener);
        print("$endPoint TimeOut: " + e.message!);
      }
    } else {
      _noInternetConnection(responseListener: responseListener);
    }
    return response;
  }

  ///-------------------- Set Header -------------------- ///
  _setHeader({bool? isHeaderRequire}) {
    if (isHeaderRequire == true) {
      String? tokenBearer;

      print(tokenBearer);

      String? token = tokenBearer;
      return {
        'Accept': NetworkStrings.ACCEPT,
        'Authorization': "Bearer $token",
      };
    } else {
      return {
        'Accept': NetworkStrings.ACCEPT,
      };
    }
  }

  // ///-------------------- Validate Response -------------------- ///
  // Future<void> validateResponse(
  //     {Response? response, ResponseListener? responseListener, bool message=false}) async {
  //   if (response != null) {
  //     var jsonResponse = response.data;
  //     log(jsonResponse.toString());
  //
  //     if (jsonResponse != null) {
  //       if (jsonResponse['message'] != null && message==true)
  //         Utils.showToast(message: jsonResponse['message']);
  //
  //       if (response.statusCode == Constants.SUCCESS_CODE) {
  //         if (jsonResponse['status'] == Constants.API_SUCCESS_STATUS) {
  //           // When Status Code is 200 and api_status is 1
  //           if (responseListener != null) {
  //             responseListener.onSuccess(response: jsonResponse);
  //           }
  //         } else {
  //           // When Status Code is 200 and api_status is 0
  //           if (responseListener != null) {
  //             responseListener.onFailure(response: jsonResponse);
  //           }
  //         }
  //       } else {
  //         // When Status Code is not 200
  //         if (responseListener != null) {
  //           responseListener.onFailure(response: jsonResponse);
  //         }
  //         log(response.statusCode.toString());
  //       }
  //     }
  //   }
  // }

  ///----------------Validate Response------------------///

  Future<void> validateResponse({
    Response? response,
    Function? bodyFunction,
  }) async {
    if (response != null) {
      var jsonResponse = response.data;
      if (jsonResponse != null) {
        if (jsonResponse['message'] != null) {
          // Utils.showToast(message: jsonResponse['message']);
          // BaseServiceUI().showFlushBar(context, jsonResponse['message']);
        }
        if (response.statusCode == NetworkStrings.SUCCESS_CODE_200) {
          if (jsonResponse['status'] == NetworkStrings.API_SUCCESS_STATUS) {
            // When Status Code is 200 and api_status is 1
            bodyFunction!();
          }
        } else {
          // Utils.showToast(message: jsonResponse['message']);
        }
      }
    }
  }

  ///-------------------- No Internet Connection -------------------- ///
  void _noInternetConnection({
    ResponseListener? responseListener,
  }) {
    // Call Failure Listener
    if (responseListener != null) {
      responseListener.onFailure(response: {});
    }
    // Display Error Message
    // Utils.showToast(message: "NO INTERNET");
    // BaseServiceUI().showFlushBar(context, Strings.NO_INTERNET);
  }

  ///-------------------- On TimeOut -------------------- ///
  void _onTimeOut({
    String? message,
    ResponseListener? responseListener,
  }) {
    // Call Failure Listener
    if (responseListener != null) {
      responseListener.onFailure(response: {});
    }
    // Display Error Message
    // Utils.showToast(message: message);
    // BaseServiceUI().showFlushBar(context, message);
  }
}
