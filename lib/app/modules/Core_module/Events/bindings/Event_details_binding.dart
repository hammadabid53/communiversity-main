import 'package:flutter_getx_template/app/modules/Core_module/Events/controllers/Events_details_controller.dart';
import 'package:get/get.dart';

class EventsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventsDetailsController>(
      () => EventsDetailsController(),
    );
  }
}
