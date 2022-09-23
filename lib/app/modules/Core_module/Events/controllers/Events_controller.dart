

import 'package:get/get.dart';

import '../../../../core/base/base_controller.dart';

class EventsController extends BaseController {
  final count = 0.obs;

  void increment() => count.value++;
}
