import 'package:flutter_getx_template/app/modules/create_membership/bindings/CreateMemberShip_binding.dart';
import 'package:flutter_getx_template/app/modules/create_membership/views/CreateMemberShip_view.dart';
import 'package:flutter_getx_template/app/modules/events_and_capms/bindings/EventsCampsBinding.dart';
import 'package:flutter_getx_template/app/modules/events_and_capms/views/EventsCampsView.dart';
import 'package:flutter_getx_template/app/modules/gym/bindings/GymBinding.dart';
import 'package:flutter_getx_template/app/modules/gym/views/GymView.dart';
import 'package:get/get.dart';

import '/app/modules/favorite/bindings/favorite_binding.dart';
import '/app/modules/favorite/views/favorite_view.dart';
import '/app/modules/home/bindings/home_binding.dart';
import '/app/modules/home/views/home_view.dart';
import '/app/modules/main/bindings/main_binding.dart';
import '/app/modules/main/views/main_view.dart';
import '/app/modules/other/bindings/other_binding.dart';
import '/app/modules/other/views/other_view.dart';
import '/app/modules/project_details/bindings/project_details_binding.dart';
import '/app/modules/project_details/views/project_details_view.dart';
import '/app/modules/settings/bindings/settings_binding.dart';
import '/app/modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_MEMBER_SHIP_PROFILE,
      page: () => CreateMemberShipView(),
      binding: CreateMemberShipBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.OTHER,
      page: () => OtherView(),
      binding: OtherBinding(),
    ),
    GetPage(
      name: _Paths.PROJECT_DETAILS,
      page: () => ProjectDetailsView(),
      binding: ProjectDetailsBinding(),
    ),

    GetPage(
      name: _Paths.GYM,
      page: () => GymView(),
      binding: GymBinding(),
    ),


    GetPage(
      name: _Paths.EVENTS_AND_CAMPS,
      page: () => EventsCampsView(),
      binding: EventsCampsBinding(),
    ),
  ];
}
