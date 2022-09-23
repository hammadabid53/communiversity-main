import 'package:flutter_getx_template/app/modules/Registration_module/profile_module/edit_profile/controller/edit_controller.dart';
import 'package:get/get.dart';

class EditprofileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileController>(
      () => EditProfileController(),
    );
  }
}
