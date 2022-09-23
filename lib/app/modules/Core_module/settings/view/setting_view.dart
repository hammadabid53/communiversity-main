import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';

import '../../../../core/widget/Resuable_widgets/custom_app_button.dart';
import '../../../../core/widget/Resuable_widgets/custom_core_background.dart';
import '../controller/setting_controller.dart';

class SettingView extends GetView<Settingcontroller> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    // const Color activeColor = Color.fromARGB(255, 52, 199, 89);
    return CustomCoreBackground(
      headertitletext: AppStrings.SETTINGS_TEXT,
      isenabledsearch: false,
      leadingiconimage: AssetPaths.BACK_ICON,
      trailingiconenabled: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_RecieveNotification(), _changePasswordbtn()],
      ),
    );
  }

  Widget _changePasswordbtn() {
    return CustomAppBtn(
      title: AppStrings.CHANGE_PASSWORD,
    );
  }

  Widget _RecieveNotification() {
    return Row(children: [
      CustomTextWidget(
        text: AppStrings.RECIEVE_PUSH_NOTIFICATION_TEXT,
        style: StyleForText.boldTitleSecondaryColorStyle,
      ),
      const Spacer(),
      ShaderMask(
        child: CupertinoSwitch(
          activeColor: AppColors.colorPrimary,
          value: value,
          onChanged: (v) => value = v,
        ),
        shaderCallback: (r) {
          return const LinearGradient(colors: [
            AppColors.colorPrimarySwatch,
            Color.fromARGB(255, 52, 199, 89)
          ]
              // : [Colors.red, Colors.red],
              ).createShader(r);
        },
      ),
    ]);
  }
}
