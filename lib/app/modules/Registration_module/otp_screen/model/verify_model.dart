class VerifyOtpModel {
  final int? status;
  final String? msg;
  final String? token;

  VerifyOtpModel({
    this.status,
    this.msg,
    this.token,
  });

  VerifyOtpModel.fromJson(Map<String, dynamic> json)
    : status = json['status'] as int?,
      msg = json['msg'] as String?,
      token = json['token'] as String?;

  Map<String, dynamic> toJson() => {
    'status' : status,
    'msg' : msg,
    'token' : token
  };
}