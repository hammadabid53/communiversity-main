import 'package:flutter/material.dart';

import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_app_button.dart';

import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_core_background.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_textfield_container.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/change_password/controller/change_password_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../core/utils/app_assets_path.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  @override
  Widget build(BuildContext context) {
    return CustomCoreBackground(
      headertitletext: AppStrings.CHANGE_PASSWORD,
      leadingiconimage: AssetPaths.BACK_ICON,
      child: Column(
        children: [
          _currentPasswordtextfield(),
          _NewPasswordtextfield(),
          _ConfirmPasswordtextfield(),
          _getsizedbox(),
          _changepasswordbtn()
        ],
      ),
    );
  }

  Widget _currentPasswordtextfield() {
    return TextFieldContainer(
        textfieldcolor: AppColors.textColorWhite,
        labeltextcolor: AppColors.colorPrimary,
        labelText: AppStrings.CURRENT_PASSWORD_TEXT,
        hinttext: AppStrings.ENTER_NEW_PASSWORD_TEXT,
        prefixiconWidget: AssetImageView(
          fileName: AssetPaths.PASSWORD_ICON,
          scale: 2.5.sp,
        ),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _NewPasswordtextfield() {
    return TextFieldContainer(
        textfieldcolor: AppColors.textColorWhite,
        labeltextcolor: AppColors.colorPrimary,
        labelText: AppStrings.NEW_PASSWORD_TEXT,
        hinttext: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
        prefixiconWidget: AssetImageView(
          fileName: AssetPaths.PASSWORD_ICON,
          scale: 2.5.sp,
        ),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _ConfirmPasswordtextfield() {
    return TextFieldContainer(
        textfieldcolor: AppColors.textColorWhite,
        labeltextcolor: AppColors.colorPrimary,
        labelText: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
        hinttext: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
        prefixiconWidget: AssetImageView(
          fileName: AssetPaths.PASSWORD_ICON,
          scale: 2.5.sp,
        ),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _getsizedbox() {
    return SizedBox(
      height: AppValues.bottomheight,
    );
  }

  Widget _changepasswordbtn() {
    return CustomAppBtn(
      title: AppStrings.SAVE_CHANGES_TEXT,
    );
  }
}
