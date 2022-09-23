import 'package:flutter_getx_template/app/modules/Registration_module/splashscreen/controller/splashcontroller.dart';
import 'package:get/get.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
  }
}
