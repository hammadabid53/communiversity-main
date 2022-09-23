import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/modules/Core_module/favorites/controller/favorite_controller.dart';
import 'package:flutter_getx_template/app/modules/Core_module/home/widget/event_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/Resuable_widgets/custom_core_background.dart';

class FavoriteView extends GetView<Favoritecontroller> {
  @override
  Widget build(BuildContext context) {
    return CustomCoreBackground(
      headertitletext: AppStrings.FAV_DRAWER_TEXT,
      isenabledsearch: false,
      leadingiconimage: AssetPaths.BACK_ICON,
      trailingiconenabled: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [_EventsListView()],
      ),
    );
  }

  Widget _EventsListView() {
    return Container(
      color: AppColors.transparentColor,
      height: 1.sh,
      child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: 3,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return EventContainer(
              height: 0.50.sh,
              width: 1.sw,
              isenablerow: true,
              trailingicon: true,
            );
          }),
    );
  }
}
