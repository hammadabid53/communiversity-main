import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '/app/core/values/app_colors.dart';
import '/app/core/widget/app_bar_title.dart';

//Default appbar customized with the design of our app
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitleText;
  final List<Widget>? actions;
  final bool isBackButtonEnabled;
  final String? iconImage;
  bool? trailingIcon;
  double? appbarheight;

  CustomAppBar(
      {Key? key,
      required this.appBarTitleText,
      this.actions,
      this.appbarheight,
      this.trailingIcon = true,
      this.isBackButtonEnabled = true,
      this.iconImage})
      : super(key: key);

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.colorPrimary,
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () {
              if (iconImage == AssetPaths.DRAWER_ICON) {
                print("drawer clicked");
                ZoomDrawer.of(context)?.toggle();
              } else if (iconImage == AssetPaths.BACK_ICON) {
                print("back clicked");
                Get.back();
              }
            },
            child: Image.asset(
              iconImage.toString(),
              scale: 2.5.sp,
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: isBackButtonEnabled,
        actions: [
          trailingIcon == true
              ? Image.asset(
                  AssetPaths.NOTIFICATION_ICON,
                  scale: 2.5.sp,
                )
              : Container()
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(AppValues.circularImageSize_30),
        )),
        iconTheme: const IconThemeData(color: AppColors.textColorWhite),
        title: AppBarTitle(text: appBarTitleText),
        flexibleSpace: SizedBox(
          width: 1.sw,
          height: appbarheight ?? 140.h,

          // )
        ));
  }
}
