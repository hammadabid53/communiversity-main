import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/values/app_colors.dart';
import '../../../../core/values/app_values.dart';
import '../../../../core/values/text_styles.dart';
import '../../../../core/widget/Resuable_widgets/custom_text_widget.dart';

class EventContainer extends StatelessWidget {
  double? height, width;
  bool? isenablerow;
  bool? trailingicon = false;
  EventContainer(
      {this.isenablerow, this.trailingicon, this.height, this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(AppValues.margin_4),
        width: width ?? 0.50.sh,
        height: height ?? 0.50.sh,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppValues.radius_12)),
          child: Column(children: [
            Expanded(
                child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          AssetPaths.HOME_IMAGE,
                        )),
                    borderRadius: BorderRadius.circular(AppValues.radius_12)),
              ),
              _datecontainer(),
              isenablerow == true
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 0.12.sh,
                          width: 1.sw,
                          decoration: const BoxDecoration(
                              color: AppColors.textColorWhite,
                              borderRadius: BorderRadius.only(
                                  bottomRight:
                                      Radius.circular(AppValues.radius_12),
                                  bottomLeft:
                                      Radius.circular(AppValues.radius_12))),
                          child: Padding(
                            padding:
                                const EdgeInsets.all(AppValues.kDefaultPadding),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomTextWidget(
                                  style:
                                      StyleForText.boldTitlePrimaryColorStyle,
                                  text: AppStrings.SHORT_LOREM_TEXT,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      AssetPaths.LOCATION_ICON,
                                      scale: 2.5.sp,
                                    ),
                                    const SizedBox(
                                      width: AppValues.margin_10,
                                    ),
                                    CustomTextWidget(
                                      style: StyleForText.titleStyle,
                                      text: AppStrings.CENTRAL_AUDITORIUM_TEXT,
                                    ),
                                    const SizedBox(
                                      width: AppValues.margin_6,
                                    ),
                                    Image.asset(
                                      AssetPaths.TIME_ICON,
                                      scale: 2.5.sp,
                                    ),
                                    const SizedBox(
                                      width: AppValues.margin_6,
                                    ),
                                    CustomTextWidget(
                                      style: StyleForText.titleStyle,
                                      text: AppStrings.TIME_TEXT,
                                    ),
                                    const Spacer(),
                                    trailingicon == true
                                        ? const AssetImageView(
                                            fileName: AssetPaths.CROSS_ICON,
                                            width: AppValues.iconSize_22,
                                            height: AppValues.iconSize_22,
                                          )
                                        : Container()
                                  ],
                                )
                              ],
                            ),
                          )),
                    )
                  : Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 0.05.sh,
                        width: 1.sw,
                        decoration: const BoxDecoration(
                            color: AppColors.textColorWhite,
                            borderRadius: BorderRadius.only(
                                bottomRight:
                                    Radius.circular(AppValues.radius_12),
                                bottomLeft:
                                    Radius.circular(AppValues.radius_12))),
                        child: Center(
                          child: CustomTextWidget(
                            style: StyleForText.boldTitlePrimaryColorStyle,
                            text: AppStrings.SHORT_LOREM_TEXT,
                          ),
                        ),
                      ))
            ]))
          ]),
        ));
  }

  Widget _datecontainer() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        // margin: EdgeInsets.only(left: 0.50.sw),
        height: 40.h,
        width: 30.w,
        decoration: const BoxDecoration(
            color: AppColors.colorPrimary,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(AppValues.radius_12))),

        child: Center(
          child: CustomTextWidget(
            textAlign: TextAlign.center,
            style: StyleForText.whiteText16,
            text: AppStrings.DATE_TEXT,
          ),
        ),
      ),
    );
  }
}
