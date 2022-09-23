import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:flutter_getx_template/app/modules/Core_module/Redeem/controller/redeem_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';

import '../../../../core/widget/Resuable_widgets/custom_core_background.dart';

class RedeemView extends GetView<Redeemcontroller> {
  @override
  Widget build(BuildContext context) {
    // const Color activeColor = Color.fromARGB(255, 52, 199, 89);
    return CustomCoreBackground(
      headertitletext: AppStrings.REDEEM_TITLE_TEXT,
      isenabledsearch: false,
      leadingiconimage: AssetPaths.BACK_ICON,
      trailingiconenabled: false,
      child: Column(
        children: [
          _heeliconwidget(),
          _redeemcoinstext(),
          _sizedboxheight(),
          _availdiscounttext(),
          _sizedboxheight(),
          _redeemcodecontainer()
        ],
      ),
    );
  }

  Widget _heeliconwidget() {
    return Align(
      alignment: Alignment.center,
      child: AssetImageView(
        fileName: AssetPaths.HEEL_ICON,
        scale: 2.sp,
      ),
    );
  }

  Widget _sizedboxheight() {
    return SizedBox(
      height: AppValues.height_24,
    );
  }

  Widget _redeemcoinstext() {
    return Align(
        alignment: Alignment.center,
        child: CustomTextWidget(
          text: AppStrings.REDEEMED_TAR_C0INS_TEXT,
          style: StyleForText.boldTitlePrimaryColorStyle,
        ));
  }

  Widget _availdiscounttext() {
    return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            CustomTextWidget(
              text: AppStrings.SHOW_CODE_TEXT,
              style: StyleForText.boldTitlestyle,
            ),
            CustomTextWidget(
              text: AppStrings.TO_AVAIL_DICOUNT_TEXT,
              style: StyleForText.boldTitlestyle,
            ),
          ],
        ));
  }

  Widget _redeemcodecontainer() {
    return Align(
        alignment: Alignment.center,
        child: Container(
          height: 0.08.sh,
          width: 250.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppValues.radius_12),
              color: AppColors.colorPrimary),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: AppStrings.DUMMY_NO_TEXT,
                style: StyleForText.titleStyleWhite,
              ),
              SizedBox(
                width: AppValues.height_20,
              ),
              CustomTextWidget(
                text: AppStrings.DUMMY_NO_TEXT,
                style: StyleForText.titleStyleWhite,
              ),
              SizedBox(
                width: AppValues.height_20,
              ),
              CustomTextWidget(
                text: AppStrings.DUMMY_NO_TEXT,
                style: StyleForText.titleStyleWhite,
              ),
            ],
          ),
        ));
  }
}
