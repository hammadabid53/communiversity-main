import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/values/app_colors.dart';

class ProfilePictureWidget extends StatelessWidget {
  bool? isediticonshow;
  ProfilePictureWidget({this.isediticonshow = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppValues.kDefaultPadding),
      child: Stack(
        children: [
          _profilecontainer(),
          isediticonshow == true ? _stackprofileicon() : Container()
        ],
      ),
    );
  }

  Widget _stackprofileicon() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          AppValues.extraLargeSpacing_98,
          AppValues.extraLargeSpacing_100,
          AppValues.padding_zero,
          AppValues.padding_zero),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: CircleAvatar(
              radius: 24.r,
              backgroundColor: AppColors.colorPrimary,
              child: CircleAvatar(
                radius: 22.r,
                backgroundColor: AppColors.textColorWhite,
                child: Image.asset(
                  AssetPaths.UPLOAD_ICON,
                  scale: 2.5.sp,
                  color: AppColors.colorPrimary,
                  fit: BoxFit.cover,
                ),
              ))),
    );
  }

  Widget _profilecontainer() {
    return Align(
      alignment: Alignment.center,
      child: CircleAvatar(
        radius: 75.r,
        backgroundColor: AppColors.colorPrimary,
        child: Container(
          height: 0.20.sh,
          decoration: const BoxDecoration(
              color: AppColors.whiteshade,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AssetPaths.AVATAR_IMAGE,
                  )),
              shape: BoxShape.circle),
        ),
      ),
    );
  }
}
