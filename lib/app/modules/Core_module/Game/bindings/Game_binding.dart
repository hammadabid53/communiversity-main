import 'package:get/get.dart';

import '../controllers/Game_controller.dart';



class GameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameController>(
      () => GameController(),
    );
  }
}
