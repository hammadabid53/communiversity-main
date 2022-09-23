import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/custom_view.dart';

import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';

import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_app_button.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_auth_background.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_bottom_container.dart';

import 'package:flutter_getx_template/app/modules/Registration_module/forgot_password/controller/forgot_controller.dart';

import '../widget/otp_widget.dart';

class OtpScreenView extends CustomView<ForgotPasswordController> {
  @override
  Widget body(BuildContext context) {
    return CustomAuthBackground(
      headertitletext: AppStrings.OTP_TEXT,
      imagebackground: AssetPaths.OTP_VERIFICATION_SCREEN_IMAGE,
      child: Column(
        children: [
          const OtpContainer(),
          _timeimage(),
          _verifytextbtn(),
          _didnotrecievecodetext()
        ],
      ),
    );
  }

  Widget _timeimage() {
    return Image.asset(AssetPaths.TIME_ICON);
  }

  Widget _verifytextbtn() {
    return CustomAppBtn(
      title: AppStrings.VERIFY,
    );
  }

  Widget _didnotrecievecodetext() {
    return CustomBottomContainer(
      title1: AppStrings.DIDNT_RECIEVE_CODE,
      title2: AppStrings.RESEND_TEXT,
      onclickTap: _onclickedtap,
    );
  }

  void _onclickedtap() {}
}
