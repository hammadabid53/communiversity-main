class SignupModel {
  final int? status;
  final String? msg;
  final Data? data;

  SignupModel({
    this.status,
    this.msg,
    this.data,
  });

  SignupModel.fromJson(Map<String, dynamic> json)
    : status = json['status'] as int?,
      msg = json['msg'] as String?,
      data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'status' : status,
    'msg' : msg,
    'data' : data?.toJson()
  };
}

class Data {
  final String? token;
  final User? user;

  Data({
    this.token,
    this.user,
  });

  Data.fromJson(Map<String, dynamic> json)
    : token = json['token'] as String?,
      user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'token' : token,
    'user' : user?.toJson()
  };
}

class User {
  final String? userName;
  final String? userBio;
  final String? program;
  final String? userEmail;
  final String? userPassword;
  final dynamic userImage;
  final String? userAuthentication;
  final dynamic userSocialToken;
  final dynamic userSocialType;
  final dynamic userDeviceType;
  final String? userDeviceToken;
  final String? userAddress;
  final int? code;
  final int? verified;
  final int? isBlocked;
  final Location? location;
  final String? id;
  final String? createdAt;
  final String? updatedAt;
  final int? v;

  User({
    this.userName,
    this.userBio,
    this.program,
    this.userEmail,
    this.userPassword,
    this.userImage,
    this.userAuthentication,
    this.userSocialToken,
    this.userSocialType,
    this.userDeviceType,
    this.userDeviceToken,
    this.userAddress,
    this.code,
    this.verified,
    this.isBlocked,
    this.location,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  User.fromJson(Map<String, dynamic> json)
    : userName = json['user_name'] as String?,
      userBio = json['user_bio'] as String?,
      program = json['program'] as String?,
      userEmail = json['user_email'] as String?,
      userPassword = json['user_password'] as String?,
      userImage = json['user_Image'],
      userAuthentication = json['user_authentication'] as String?,
      userSocialToken = json['user_social_token'],
      userSocialType = json['user_social_type'],
      userDeviceType = json['user_device_type'],
      userDeviceToken = json['user_device_token'] as String?,
      userAddress = json['user_address'] as String?,
      code = json['code'] as int?,
      verified = json['verified'] as int?,
      isBlocked = json['is_blocked'] as int?,
      location = (json['location'] as Map<String,dynamic>?) != null ? Location.fromJson(json['location'] as Map<String,dynamic>) : null,
      id = json['_id'] as String?,
      createdAt = json['createdAt'] as String?,
      updatedAt = json['updatedAt'] as String?,
      v = json['__v'] as int?;

  Map<String, dynamic> toJson() => {
    'user_name' : userName,
    'user_bio' : userBio,
    'program' : program,
    'user_email' : userEmail,
    'user_password' : userPassword,
    'user_Image' : userImage,
    'user_authentication' : userAuthentication,
    'user_social_token' : userSocialToken,
    'user_social_type' : userSocialType,
    'user_device_type' : userDeviceType,
    'user_device_token' : userDeviceToken,
    'user_address' : userAddress,
    'code' : code,
    'verified' : verified,
    'is_blocked' : isBlocked,
    'location' : location?.toJson(),
    '_id' : id,
    'createdAt' : createdAt,
    'updatedAt' : updatedAt,
    '__v' : v
  };
}

class Location {
  final String? lat;
  final String? long;

  Location({
    this.lat,
    this.long,
  });

  Location.fromJson(Map<String, dynamic> json)
    : lat = json['lat'] as String?,
      long = json['long'] as String?;

  Map<String, dynamic> toJson() => {
    'lat' : lat,
    'long' : long
  };
}