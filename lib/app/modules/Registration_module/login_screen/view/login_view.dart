import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/validation/validation.dart';
import 'package:get/get.dart';

import '../../../../core/register/custom_view.dart';
import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/values/app_values.dart';
import '../../../../core/values/text_styles.dart';
import '../../../../core/widget/Resuable_widgets/custom_app_button.dart';
import '../../../../core/widget/Resuable_widgets/custom_auth_background.dart';
import '../../../../core/widget/Resuable_widgets/custom_bottom_container.dart';
import '../../../../core/widget/Resuable_widgets/custom_text_widget.dart';
import '../../../../core/widget/Resuable_widgets/custom_textfield_container.dart';
import '../../../../core/widget/ripple.dart';
import '../../../../routes/app_pages.dart';
import '../controller/login_controller.dart';

class LoginView extends CustomView<LoginScreenController> {
  TextEditingController loginemail = TextEditingController();
  TextEditingController loginpass = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget body(BuildContext context) {
    return CustomAuthBackground(
      iconvisibility: false,
      headertitletext: AppStrings.LOGIN_TEXT,
      imagebackground: AssetPaths.LOGIN_SCREEN_IMAGE,
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Column(
          children: [
            _emailTextField(),
            _passwordTextField(),
            _getSizedBox(),
            _forgotPasswordBtn(),
            _loginbtn(),
            _alreadyHaveAnAccountText(),
          ],
        ),
      ),
    );
  }

  Widget _getSizedBox() {
    return SizedBox(
      height: AppValues.height_20,
    );
  }

  Widget _emailTextField() {
    return TextFieldContainer(
        validator: (val) {
          if (!val!.isValidEmail) {
            return 'Please enter a valid email address';
          }
          return null;
        },
        obsecureText: false,
        controller: loginemail,
        labelText: AppStrings.EMAIL_HINT_TEXT,
        prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.EMAIL_ICON)));
  }

  Widget _passwordTextField() {
    return TextFieldContainer(
        validator: (val) {
          if (!val!.isValidPassword) {
            return 'Please enter a valid password';
          }
          return null;
        },
        controller: loginpass,
        labelText: AppStrings.PASSWORD_HINT_TEXT,
        prefixiconWidget: const ImageIcon(AssetImage(AssetPaths.PASSWORD_ICON)),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _forgotPasswordBtn() {
    return Ripple(
      onTap: _onforgotClicked,
      child: CustomTextWidget(
        style: StyleForText.boldTitlePrimaryColorStyle,
        text: AppStrings.FORGOT_PASSWORD,
      ),
    );
  }

  Widget _loginbtn() {
    return CustomAppBtn(
      onclickPressed: _onloginclicked,
      title: AppStrings.LOGIN_TEXT,
    );
  }

  Widget _alreadyHaveAnAccountText() {
    return CustomBottomContainer(
      onclickTap: _onSignupClicked,
      title1: AppStrings.DONT_HAVE_AN_ACCOUNT,
      title2: AppStrings.SIGNUP_TEXT,
    );
  }

  void _onloginclicked() {
    if (_formKey.currentState!.validate()) {
      LoginScreenController.i.userLogin(loginemail.text, loginpass.text);
    }
    // Get.toNamed(Routes.MAIN);
  }

  void _onSignupClicked() {
    Get.toNamed(Routes.SIGNUP_SCREEN_ROUTE);
  }

  void _onforgotClicked() {
    Get.toNamed(Routes.FORGOT_PASSWORD_SCREEN_ROUTE);
  }
}
