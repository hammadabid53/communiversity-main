import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';

import 'package:flutter_getx_template/app/modules/Core_module/mycoins/controller/my_coins_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/Resuable_widgets/custom_core_background.dart';
import '../widget/custom_listTile_widget.dart';

class MyCoinsView extends GetView<MyCoinscontroller> {
  @override
  Widget build(BuildContext context) {
    return CustomCoreBackground(
      stackwidget: _stackwidgettext(),
      appbarheight: AppValues.height_180,
      headertitletext: AppStrings.MYCOINS_TEXT,
      isenabledsearch: true,
      leadingiconimage: AssetPaths.BACK_ICON,
      trailingiconenabled: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sizedboxheight(),
          _redeemedtarcoinstext(),
          _redeemedtarcoinslisttile()
        ],
      ),
    );
  }

  Widget _stackwidgettext() {
    return Column(
      children: [
        CustomTextWidget(
          text: AppStrings.TOTAL_COINS_TEXT,
          style: StyleForText.titleStyleWhite,
          textAlign: TextAlign.center,
        ),
        CustomTextWidget(
          text: AppStrings.TOTAL_TAR_HEELS_TRACKS_TEXT,
          style: StyleForText.titleStyleWhite,
          textAlign: TextAlign.center,
        ),
        CustomTextWidget(
          text: AppStrings.REDEEM_TEXT,
          textColor: AppColors.textColorWhite,
          fontWeight: FontWeight.bold,
          fontSize: 1.2.sp,
          textDecoration: TextDecoration.underline,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _sizedboxheight() {
    return SizedBox(
      height: AppValues.height_24,
    );
  }

  Widget _redeemedtarcoinstext() {
    return CustomTextWidget(
      text: AppStrings.REDEEMED_TAR_C0INS_TEXT,
      style: StyleForText.boldTitlePrimaryColorStyle,
    );
  }

  Widget _redeemedtarcoinslisttile() {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return const CustomListTile();
        });
  }
}
