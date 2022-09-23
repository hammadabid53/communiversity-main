// import 'dart:io';

// import 'package:get/get.dart';
// import 'package:image_cropper/image_cropper.dart';

import 'dart:io';

import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/model/signup_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/base/base_controller.dart';
import '../../../../data/repository/signup_repository.dart';

class SignupScreenController extends BaseController {
  Rx<SignupModel> signupData = SignupModel().obs;

  final userLocal = GetStorage();
  static SignupScreenController get s => Get.find();
  void userSignup(
      String? email,
      String? password,
      String? name,
      String? confirmpassword,
      String? program,
      File? userimage,
      String address,
      String bio) {
    SignupRepository().userSignup(
        email: email,
        password: password,
        name: name,
        confirmPassword: confirmpassword,
        program: program,
        userimage: image,
        useraddress: address,
        bio: bio);
  }

  File? image;

  PickedFile? imageFile;
  final ImagePicker imagePicker = ImagePicker();

  void takePhoto(ImageSource source) async {
    final pickedFile = await imagePicker.pickImage(
      source: source,
    );
    final croppedImage = await ImageCropper().cropImage(
        sourcePath: pickedFile!.path,
        maxWidth: 1080,
        maxHeight: 1080,
        uiSettings: [
          AndroidUiSettings(
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
        ]);

    if (croppedImage != null) {
      image = File(croppedImage.path);
      // images[source.toString()] = image!.path;
      print("image upload $image");

      // image = File(imageFile!.path);
      update();
    } else {
      print("No Image Picked..");
    }
    Get.back();
    update();
  }
}
