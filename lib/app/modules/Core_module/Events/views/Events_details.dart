import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/custom_view.dart';

import 'package:flutter_getx_template/app/core/values/app_colors.dart';

import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_header.dart';

import 'package:flutter_getx_template/app/modules/Core_module/Events/controllers/Events_details_controller.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/values/app_values.dart';
import '../../../../core/values/text_styles.dart';
import '../../../../core/widget/Resuable_widgets/custom_text_widget.dart';

class EventdetailsView extends CustomView<EventsDetailsController> {
  static const images = [
    AssetPaths.HOME_IMAGE,
    AssetPaths.HOME_IMAGE,
    AssetPaths.HOME_IMAGE,
    AssetPaths.HOME_IMAGE
  ];

  @override
  Widget body(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 300.h,
                    width: 1.sw,
                    child: ScrollPageView(
                      
                      controller: ScrollPageController(),
                      children:
                          images.map((image) => _imageView(image)).toList(),
                    ),
                  ),
                  _eventdetailstextcontainer(),
                ],
              ),
              CustomHeaderApp(
                  iconvisibility: true,
                  titlevisibility: false,
                  trailingiconvisiblity: true,
                  leadingicon: AppColors.textColorWhite),
            ],
          ),
        ),
      ],
    );
  }

  Widget _eventdetailstextcontainer() {
    return Container(
        width: 1.sw,
        decoration: const BoxDecoration(
            color: AppColors.textColorWhite,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(AppValues.radius_12),
                bottomLeft: Radius.circular(AppValues.radius_12))),
        child: Padding(
          padding: const EdgeInsets.all(AppValues.kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                style: StyleForText.boldTitlePrimaryColorStyle,
                text: AppStrings.SHORT_LOREM_TEXT,
              ),
              const SizedBox(
                height: AppValues.margin_12,
              ),
              Row(
                children: [
                  Image.asset(
                    AssetPaths.CALENDER_ICON,
                    scale: 2.5.sp,
                  ),
                  const SizedBox(
                    width: AppValues.margin_12,
                  ),
                  CustomTextWidget(
                    style: StyleForText.titleStyle,
                    text: AppStrings.DAY_TEXT,
                  ),
                  const SizedBox(
                    width: AppValues.margin_12,
                  ),
                  CustomTextWidget(
                    style: StyleForText.titleStyle,
                    text: AppStrings.DUMMY_DATE_TEXT,
                  ),
                  const SizedBox(
                    width: AppValues.margin_10,
                  ),
                  Image.asset(
                    AssetPaths.TIME_ICON,
                    scale: 2.5.sp,
                  ),
                  const SizedBox(
                    width: AppValues.margin_10,
                  ),
                  CustomTextWidget(
                    style: StyleForText.titleStyle,
                    text: AppStrings.TIME_TEXT,
                  ),
                ],
              ),
              const SizedBox(
                height: AppValues.margin_12,
              ),
              CustomTextWidget(
                style: StyleForText.textColorSecondarySubtitleStyle,
                text: AppStrings.LOREM_IPSUM,
              ),
            ],
          ),
        ));
  }

  ///Image
  Widget _imageView(String image) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(AppValues.circularImageSize_30),
              bottomRight: Radius.circular(AppValues.circularImageSize_30)),
          image: DecorationImage(
              fit: BoxFit.cover,
              scale: 3.sp,
              image: AssetImage(
                image,
              ))),
    );
  }
}
