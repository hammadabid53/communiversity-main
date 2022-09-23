import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/custom_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/splashcontroller.dart';
import '../widget/splashwidget.dart';

class SplashView extends CustomView<SplashController> {
  SplashView() {
    controller.onInit();
  }
  @override
  Widget body(BuildContext context) {
    return _centerapplogo();
  }

  Widget _centerapplogo() {
    return CustomForegroundLogoWidget(
      logoWidth: 1.sw,
      logoHeight: 0.30.sh,
      animation: true,
    );
  }
}
