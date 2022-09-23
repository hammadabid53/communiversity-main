import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/profile_module/Profile/controllers/profile_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../../../core/utils/app_assets_path.dart';
import '../../../../../core/widget/Resuable_widgets/custom_app_button.dart';
import '../../../../../core/widget/Resuable_widgets/custom_core_background.dart';
import '../../profile_module_widget/profile_picture_widget.dart';
import '../../profile_module_widget/profile_widget.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return CustomCoreBackground(
      leadingiconimage: AssetPaths.DRAWER_ICON,
      headertitletext: AppStrings.PROFILE_TEXT,
      isenabledsearch: false,
      trailingiconenabled: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePictureWidget(
            isediticonshow: false,
          ),
          ProfileWidget(
            title: AppStrings.NAME_HINT_TEXT,
            subtitle: AppStrings.JOHN_DOE_TEXT,
          ),
          ProfileWidget(
            title: AppStrings.EMAIL_HINT_TEXT,
            subtitle: AppStrings.JOHN_DOE_TEXT,
          ),
          ProfileWidget(
            title: AppStrings.PROGRAM_ENROLLED,
            subtitle: AppStrings.JOHN_DOE_TEXT,
          ),
          ProfileWidget(
            title: AppStrings.ADDRESS_TEXT,
            subtitle: AppStrings.JOHN_DOE_TEXT,
          ),
          ProfileWidget(
            title: AppStrings.BIO_TEXT,
            subtitle: AppStrings.JOHN_DOE_TEXT,
          ),
          _editprofilebtn()
        ],
      ),
    );
  }

  Widget _editprofilebtn() {
    return CustomAppBtn(
      title: AppStrings.EDIT_PROFILE_TEXT,
    );
  }
}
