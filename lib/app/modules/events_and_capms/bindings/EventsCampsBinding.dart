import 'package:get/get.dart';

import '../controllers/EventsCampsController.dart';

class EventsCampsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventsCampsController>(
      () => EventsCampsController(),
    );
  }
}
