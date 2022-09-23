import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/profile_module/profile_module_widget/profile_picture_widget.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../../../core/utils/app_assets_path.dart';
import '../../../../../core/values/app_colors.dart';
import '../../../../../core/values/app_values.dart';
import '../../../../../core/widget/Resuable_widgets/custom_app_button.dart';
import '../../../../../core/widget/Resuable_widgets/custom_core_background.dart';
import '../../../../../core/widget/Resuable_widgets/custom_textfield_container.dart';
import '../controller/edit_controller.dart';
import '../widget/custom_drop_down.dart';

class EditProfileView extends GetView<EditProfileController> {
  @override
  Widget build(BuildContext context) {
    return CustomCoreBackground(
      headertitletext: AppStrings.EDIT_PROFILE_TEXT,
      isenabledsearch: false,
      leadingiconimage: AssetPaths.BACK_ICON,
      trailingiconenabled: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePictureWidget(
            isediticonshow: true,
          ),
          __editprofilenamefield(),
          __editprofileemailfield(),
          __editprofileprogramfield(),
          _addresstextfield(),
          _biotextfield(),
          _getsizedbox(),
          _editprofilebtn()
        ],
      ),
    );
  }

  Widget _editprofilebtn() {
    return CustomAppBtn(
      title: AppStrings.UPDATE_TEXT,
    );
  }

  Widget __editprofilenamefield() {
    return TextFieldContainer(
      textfieldcolor: AppColors.cream,
      labelText: AppStrings.USER_NAME_TEXT,
      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
      prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.USER_ICON)),
    );
  }

  Widget __editprofileemailfield() {
    return TextFieldContainer(
      textfieldcolor: AppColors.cream,
      labelText: AppStrings.EMAIL_HINT_TEXT,
      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
      prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.EMAIL_ICON)),
    );
  }

  Widget __editprofileprogramfield() {
    return const DropDownMenuItem();
  }

  Widget _addresstextfield() {
    return TextFieldContainer(
      textfieldcolor: AppColors.cream,
      labelText: AppStrings.ADDRESS_TEXT,
      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
      prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.LOCATION_ICON)),
    );
  }

  Widget _biotextfield() {
    return TextFieldContainer(
      textfieldcolor: AppColors.cream,
      labelText: AppStrings.BIO_TEXT,
      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
      prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.PASSWORD_ICON)),
    );
  }

  Widget _getsizedbox() {
    return SizedBox(
      height: AppValues.height_16,
    );
  }
}
