import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/custom_view.dart';

import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_app_button.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_auth_background.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_bottom_container.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_textfield_container.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../../profile_module/edit_profile/widget/custom_drop_down.dart';
import '../controller/signup_controller.dart';
import '../widget/takephoto_widget.dart';

class SignupScreenView extends CustomView<SignupScreenController> {
  TextEditingController sigupEmail = TextEditingController();
  TextEditingController signupPass = TextEditingController();
  TextEditingController signupConfirmPassword = TextEditingController();
  TextEditingController signupAddress = TextEditingController();
  TextEditingController signupProgram = TextEditingController();
  TextEditingController signupUsername = TextEditingController();
  TextEditingController signupBio = TextEditingController();

  @override
  Widget body(BuildContext context) {
    return CustomAuthBackground(
      headertitletext: AppStrings.SIGNUP_TEXT,
      imagebackground: AssetPaths.SIGN_UP_SCREEN,
      child: Column(
        children: [
          _uploadprofileimage(),
          _usernametextfield(),
          _emailtextfield(),
          _chooseprogramtextfield(),
          _addresstextfield(),
          _passwordtextfield(),
          _confirmpasswordtextfield(),
          _biotextfield(),
          _getsizedbox(),
          _signupbtn(),
          _alreadyhaveanaccounttext(),
        ],
      ),
    );
  }

  Widget _uploadprofileimage() {
    return CircleAvatar(
        radius: 60.r,
        backgroundColor: AppColors.colorPrimary,
        child: const BottomsheetWidget());
  }

  Widget _usernametextfield() {
    return TextFieldContainer(
      controller: signupUsername,
      labelText: AppStrings.USER_NAME_TEXT,
      prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.USER_ICON)),
    );
  }

  Widget _emailtextfield() {
    return TextFieldContainer(
      controller: sigupEmail,
      labelText: AppStrings.EMAIL_HINT_TEXT,
      prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.EMAIL_ICON)),
    );
  }

  Widget _chooseprogramtextfield() {
    return const DropDownMenuItem();
  }

  Widget _addresstextfield() {
    return TextFieldContainer(
      controller: signupAddress,
      labelText: AppStrings.ADDRESS_TEXT,
      prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.LOCATION_ICON)),
    );
  }

  Widget _passwordtextfield() {
    return TextFieldContainer(
        controller: signupPass,
        labelText: AppStrings.PASSWORD_HINT_TEXT,
        prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.PASSWORD_ICON)),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _confirmpasswordtextfield() {
    return TextFieldContainer(
        controller: signupConfirmPassword,
        labelText: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
        prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.PASSWORD_ICON)),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _biotextfield() {
    return TextFieldContainer(
      controller: signupBio,
      labelText: AppStrings.BIO_TEXT,
      prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.PASSWORD_ICON)),
    );
  }

  Widget _getsizedbox() {
    return SizedBox(
      height: AppValues.height_16,
    );
  }

  Widget _signupbtn() {
    return CustomAppBtn(
      onclickPressed: _onsignupclicked,
      title: AppStrings.SIGNUP_TEXT,
    );
  }

  Widget _alreadyhaveanaccounttext() {
    return CustomBottomContainer(
      title1: AppStrings.ALREADY_HAVE_AN_ACCOUNT,
      onclickTap: _onClicked,
      title2: AppStrings.LOGIN_TEXT,
    );
  }

  void _onClicked() {
    Get.toNamed(Routes.LOGIN_SCREEN_ROUTE);
  }

  void _onsignupclicked() {
    SignupScreenController.s.userSignup(
      sigupEmail.text,
      signupPass.text,
      signupUsername.text,
      signupConfirmPassword.text,
      "Graduate",
      null,
      signupAddress.text,
      signupBio.text,
    );
  }


}
