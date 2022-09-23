import 'package:get/get.dart';

import '../controllers/Events_controller.dart';

class EventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventsController>(
      () => EventsController(),
    );
  }
}
