import 'package:flutter_getx_template/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '/app/core/base/base_controller.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      {
        Get.offAllNamed(Routes.LOGIN_SCREEN_ROUTE);

        super.onInit();
      }
    });
  }
}
