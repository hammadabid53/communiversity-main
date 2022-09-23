import 'package:flutter_getx_template/app/modules/Core_module/settings/controller/setting_controller.dart';
import 'package:get/get.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Settingcontroller>(
      () => Settingcontroller(),
    );
  }
}
