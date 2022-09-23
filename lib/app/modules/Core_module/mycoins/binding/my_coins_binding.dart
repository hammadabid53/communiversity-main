import 'package:flutter_getx_template/app/modules/Core_module/mycoins/controller/my_coins_controller.dart';
import 'package:get/get.dart';

class MyCoinsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyCoinscontroller>(
      () => MyCoinscontroller(),
    );
  }
}
