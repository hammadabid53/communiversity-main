// import 'dart:convert' as convert;
// import 'dart:developer';

// import 'package:flutter_getx_template/app/core/utils/network_strings.dart';
// import 'package:flutter_getx_template/app/modules/Registration_module/otp_screen/model/verify_model.dart';

// import '../../core/base/dio_client/dio_client.dart';
// import '../listeners.dart/listeners.dart';



// class ResendOTPRepository extends ResponseListener {


//   ResendOTPRepository();

//   void resendOTP({context,String? userid,}) async {

//     Map<String, dynamic> rawData = {
//       "user_id": userid,
//     };
//     log(rawData.toString());

//     var response = await DioClient().postRequest(
//       endPoint: NetworkStrings.resendotp,
//       data: rawData,
//       responseListener: this,
//     );

//     var jsonResponse = response!.data;

//     if (response.statusCode == NetworkStrings.SUCCESS_CODE) {
//       if (jsonResponse['status'] == NetworkStrings.API_SUCCESS_STATUS) {
//         // When Status Code is 200 and api_status is 1


//        VerifyOtpModel. =  VerifyOtpModel.fromJson(convert.jsonDecode(response.toString()));
//         print("Dekho");
//         // Utils.showToast(message: jsonResponse['message']);

//       }
//     }
//     else{
//       // Utils.showToast(message: jsonResponse['message']);
//     }


//   }
// }








