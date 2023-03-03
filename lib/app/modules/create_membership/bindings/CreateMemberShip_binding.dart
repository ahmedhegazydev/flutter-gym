import 'package:get/get.dart';

import '../controllers/CreateMemberShip_controller.dart';
import '/app/modules/home/controllers/home_controller.dart';

class CreateMemberShipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateMemberShipController>(
      () => CreateMemberShipController(),
    );
  }
}
