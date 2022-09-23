import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/custom_view.dart';

import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_app_button.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_auth_background.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_textfield_container.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/controller/signup_controller.dart';
import 'package:flutter_getx_template/app/routes/app_pages.dart';

import 'package:get/get.dart';

class ResetScreenView extends CustomView<SignupScreenController> {
  @override
  Widget body(BuildContext context) {
    return CustomAuthBackground(
      headertitletext: AppStrings.RESET_PASSWORD,
      imagebackground: AssetPaths.RESET_PASSWORD_SCREEN_IMAGE,
      child: Column(
        children: [
          _enterpassowrdtextfield(),
          _confirmpassowrdtextfield(),
          _getsizedbox(),
          _changepasswordbtn(),
        ],
      ),
    );
  }

  Widget _enterpassowrdtextfield() {
    return TextFieldContainer(
        labelText: AppStrings.NEW_PASSWORD_TEXT,
        hinttext: AppStrings.ENTER_NEW_PASSWORD_TEXT,
        prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.PASSWORD_ICON)),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _confirmpassowrdtextfield() {
    return TextFieldContainer(
        labelText: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
        hinttext: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
        prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.PASSWORD_ICON)),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _getsizedbox() {
    return SizedBox(
      height: AppValues.height_16,
    );
  }

  Widget _changepasswordbtn() {
    return CustomAppBtn(
      onclickPressed: _onchangepasswordclicked,
      title: AppStrings.CHANGE_PASSWORD,
    );
  }

  void _onchangepasswordclicked() {
    Get.toNamed(Routes.OTP_VERFICATION_SCREEN_ROUTE);
  }
}
