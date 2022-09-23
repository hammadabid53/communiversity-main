import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/values/text_styles.dart';
import '../../../../core/widget/Resuable_widgets/custom_core_background.dart';
import '../../../../core/widget/Resuable_widgets/custom_text_widget.dart';
import '../../profile_module/edit_profile/controller/edit_controller.dart';

class PrivacyPolicyView extends GetView<EditProfileController> {
  @override
  Widget build(BuildContext context) {
    return CustomCoreBackground(
      headertitletext: AppStrings.PRIVACY_POLICY_TEXT,
      isenabledsearch: false,
      leadingiconimage: AssetPaths.BACK_ICON,
      trailingiconenabled: false,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_PRIVACY_POLICY_TEXT()]),
    );
  }

  Widget _PRIVACY_POLICY_TEXT() {
    return CustomTextWidget(
      text: AppStrings.LOREM_IPSUM,
      style: StyleForText.boldTitlePrimaryColorStyle,
    );
  }
}
