import 'package:flutter/material.dart';

import '../../../../core/register/custom_view.dart';
import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/Resuable_widgets/custom_app_button.dart';
import '../../../../core/widget/Resuable_widgets/custom_auth_background.dart';
import '../../../../core/widget/Resuable_widgets/custom_textfield_container.dart';
import '../controller/forgot_controller.dart';

class ForgotPasswordView extends CustomView<ForgotPasswordController> {
  TextEditingController forgotemail = TextEditingController();
  @override
  Widget body(BuildContext context) {
    return CustomAuthBackground(
      headertitletext: AppStrings.FORGOT_PASSWORD,
      imagebackground: AssetPaths.FORGOT_PASSWORD_SCREEN_IMAGE,
      child: Column(
        children: [_emailfield(), _sendcodeBtn()],
      ),
    );
  }

  Widget _emailfield() {
    return TextFieldContainer(
        controller: forgotemail,
        labelText: AppStrings.EMAIL_HINT_TEXT,
        prefixiconWidget:
            const ImageIcon(AssetImage(AssetPaths.PASSWORD_ICON)));
  }

  Widget _sendcodeBtn() {
    return CustomAppBtn(
      onclickPressed: _onsendbtn,
      title: AppStrings.SEND_CODE,
    );
  }

  void _onsendbtn() {
    ForgotPasswordController.f.forgotPassword(forgotemail.text);
  }
}
