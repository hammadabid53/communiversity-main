import 'package:flutter_getx_template/app/modules/Core_module/favorites/controller/favorite_controller.dart';
import 'package:get/get.dart';

class FavoriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Favoritecontroller>(
      () => Favoritecontroller(),
    );
  }
}
