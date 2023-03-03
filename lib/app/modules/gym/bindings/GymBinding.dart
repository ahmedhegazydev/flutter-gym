import 'package:get/get.dart';

import '../controllers/GymController.dart';

class GymBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GymController>(
      () => GymController(),
    );
  }
}
