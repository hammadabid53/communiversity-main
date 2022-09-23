import 'package:flutter_getx_template/app/modules/Core_module/Redeem/controller/redeem_controller.dart';
import 'package:get/get.dart';

class RedeemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Redeemcontroller>(
      () => Redeemcontroller(),
    );
  }
}
