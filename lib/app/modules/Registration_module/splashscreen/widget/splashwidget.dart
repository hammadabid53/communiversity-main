import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/base/base_widget_mixin.dart';

class CustomForegroundLogoWidget extends StatelessWidget with BaseWidgetMixin {
  final double? logoWidth, logoHeight;
  final bool animation;

  const CustomForegroundLogoWidget(
      {this.logoWidth, this.logoHeight, this.animation = false});

  @override
  Widget body(BuildContext context) {
    return animation == true
        ? Column(
            children: [
              _UpperPartWidget(),
              const Spacer(),
              Entry.scale(
                  delay: Duration.zero,
                  curve: Curves.bounceOut,
                  duration: const Duration(seconds: 4),
                  child: Entry.scale(
                      curve: Curves.fastOutSlowIn,
                      duration: const Duration(seconds: 2),
                      child: _CenterPartWidget())),
              const Spacer(),
              _BottomPartWidget()
            ],
          )
        : Container();
  }

  Widget _CenterPartWidget() {
    return SizedBox(
      width: logoWidth ?? 0.30.sw,
      height: logoHeight ?? 0.30.sh,
      child: Image.asset(AssetPaths.SPLASH_CENTER_IMAGE),
    );
  }

  Widget _UpperPartWidget() {
    return Container(
      padding: EdgeInsets.only(
        right: 0.50.sw,
      ),
      child: Image.asset(
        AssetPaths.UPPER_SPLASH_IMAGE,
        // scale: 2.sp,
      ),
    );
  }

  Widget _BottomPartWidget() {
    return Container(
      width: 1.sw,
      padding: const EdgeInsets.only(),
      child: Image.asset(
        AssetPaths.BOTTOM_SPLASH_IMAGE,
        // scale: 3.sp,
      ),
    );
  }
}
