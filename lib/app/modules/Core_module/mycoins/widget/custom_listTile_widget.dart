import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/values/app_colors.dart';
import '../../../../core/values/app_values.dart';
import '../../../../core/values/text_styles.dart';
import '../../../../core/widget/Resuable_widgets/custom_text_widget.dart';
import '../../../../core/widget/asset_image_view.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.08.sh,
      margin: const EdgeInsets.all(AppValues.smallPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppValues.radius_12),
        color: AppColors.textColorWhite,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(AppValues.smallPadding),
        leading: Padding(
          padding: const EdgeInsets.only(bottom: AppValues.smallPadding),
          child: CustomTextWidget(
            text: AppStrings.DUMMY_DATE_TEXT,
            style: StyleForText.titleStyle,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: AppValues.smallPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AssetImageView(
                fileName: AssetPaths.HEEL_ICON,
                scale: 2.5.sp,
              ),
              const SizedBox(
                width: AppValues.margin_10,
              ),
              CustomTextWidget(
                text: AppStrings.DUMMY_NO_TEXT,
                style: StyleForText.boldTitlePrimaryColorStyle,
              ),
            ],
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: AppValues.smallPadding),
          child: CustomTextWidget(
            text: AppStrings.COFFEE_TEXT,
            textColor: AppColors.textColorGreyDark,
            fontWeight: FontWeight.w500,
            fontSize: 1.2.sp,
            // style: StyleForText.cardSubtitleStyle,
            textDecoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
