// import 'dart:core';

// import 'package:dio/dio.dart';
// import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/model/signup_model.dart';

// import '/app/core/base/base_remote_source.dart';

// import '/app/network/dio_provider.dart';

// class SignupRemoteDataSourceImpl extends BaseRemoteSource {
//   Future<signupmodel>(signupmodel signupModel) {
//     var endpoint = "${DioProvider.baseUrl}/search/repositories";
//     var dioCall =
//         dioClient.post(endpoint, queryParameters: signupModel.toJson());

//     try {
//       return callApiWithErrorParser(dioCall)
//           .then((response) => _signupdataResponse(response));
//     } catch (e) {
//       rethrow;
//     }
//   }

//   signupmodel _signupdataResponse(Response<dynamic> response) {
//     return signupmodel.fromJson(response.data);
//   }
// }
