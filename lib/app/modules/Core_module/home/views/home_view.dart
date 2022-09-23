import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:flutter_getx_template/app/modules/Core_module/home/controllers/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../core/widget/Resuable_widgets/custom_core_background.dart';

import '../../../../core/widget/Resuable_widgets/custom_search_field.dart';
import '../widget/event_container.dart';
import '../widget/upcoming_event_list.dart';
import '/app/core/values/app_values.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return CustomCoreBackground(
      stackwidget: const SearchField(),
      headertitletext: AppStrings.HOME_TEXT,
      leadingiconimage: AssetPaths.DRAWER_ICON,
      trailingiconenabled: true,
      isenabledsearch: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: AppValues.margin_10,
          ),
          _titletextwidget(),
          _sizedboxheight(),
          _subtitlewidget(),
          _sizedboxheight(),
          _eventcontainer(),
          _sizedboxheight(),
          _previouseventtext(),
          SizedBox(height: 0.25.sh, child: const UpcomingListview())
        ],
      ),
    );
  }

  Widget _sizedboxheight() {
    return const SizedBox(
      height: AppValues.margin_10,
    );
  }

  Widget _previouseventtext() {
    return CustomTextWidget(
      style: StyleForText.boldTitleStyle,
      text: AppStrings.PREVIOUS_EVENT_TEXT,
    );
  }

  Widget _eventcontainer() {
    return EventContainer(
      isenablerow: true,
      width: 1.0.sw,
    );
  }

  Widget _subtitlewidget() {
    return CustomTextWidget(
      style: StyleForText.boldTitleStyle,
      text: AppStrings.CURRENT_EVENT_TEXT,
    );
  }

  Widget _titletextwidget() {
    return Row(children: [
      CustomTextWidget(
        style: StyleForText.bigTitleStyle,
        text: AppStrings.HI_JOE_TEXT,
      ),
      const SizedBox(
        width: AppValues.padding_4,
      ),
      AssetImageView(
        fileName: AssetPaths.GREETING_ICON,
        scale: 2.5.sp,
      )
    ]);
  }
}
