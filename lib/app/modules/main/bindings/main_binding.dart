import 'package:flutter_getx_template/app/modules/create_membership/bindings/CreateMemberShip_binding.dart';
import 'package:flutter_getx_template/app/modules/create_membership/controllers/CreateMemberShip_controller.dart';
import 'package:flutter_getx_template/app/modules/events_and_capms/controllers/EventsCampsController.dart';
import 'package:get/get.dart';

import '../../gym/controllers/GymController.dart';
import '/app/modules/favorite/controllers/favorite_controller.dart';
import '/app/modules/home/controllers/home_controller.dart';
import '/app/modules/main/controllers/main_controller.dart';
import '/app/modules/other/controllers/other_controller.dart';
import '/app/modules/settings/controllers/settings_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
          () => MainController(),
      fenix: true,
    );
    Get.lazyPut<OtherController>(
          () => OtherController(),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut<FavoriteController>(
      () => FavoriteController(),
    );
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
    Get.lazyPut<CreateMemberShipController>(
      () => CreateMemberShipController(),
    );
    Get.lazyPut<GymController>(
      () => GymController(),
    );
    Get.lazyPut<EventsCampsController>(
          () => EventsCampsController(),
    );
  }
}
