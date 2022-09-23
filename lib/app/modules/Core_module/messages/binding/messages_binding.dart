import 'package:flutter_getx_template/app/modules/Core_module/messages/controller/messages_controller.dart';

import 'package:get/get.dart';

class MessagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Messagescontroller>(
      () => Messagescontroller(),
    );
  }
}
