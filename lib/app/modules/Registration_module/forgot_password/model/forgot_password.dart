class ForgotPassword {
  final int? status;
  final String? msg;
  final String? userId;

  ForgotPassword({
    this.status,
    this.msg,
    this.userId,
  });

  ForgotPassword.fromJson(Map<String, dynamic> json)
    : status = json['status'] as int?,
      msg = json['msg'] as String?,
      userId = json['userId'] as String?;

  Map<String, dynamic> toJson() => {
    'status' : status,
    'msg' : msg,
    'userId' : userId
  };
}