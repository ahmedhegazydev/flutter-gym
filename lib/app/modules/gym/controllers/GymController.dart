import 'package:get/get.dart';

import '../model/AmenitiesItem.dart';
import '../model/ItemBranchesLocations.dart';
import '/app/core/base/base_controller.dart';
import '/app/core/base/paging_controller.dart';
import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/repository/github_repository.dart';
import '/app/modules/home/model/github_project_ui_data.dart';

class GymController extends BaseController {

  static GymController get to => Get.find<GymController>();

  final List<ItemBranchesLocations> itemsBranchesLocations = [
    const ItemBranchesLocations(location: "Sheraton", imageAsset: "assets/images/hers.png", time: "9AM - 11PM", dayOff: "fri off"),
    const ItemBranchesLocations(location: "Sheraton", imageAsset: "assets/images/hers.png", time: "9AM - 11PM", dayOff: "fri off"),
    const ItemBranchesLocations(location: "Sheraton", imageAsset: "assets/images/hers.png", time: "9AM - 11PM", dayOff: "fri off"),
    const ItemBranchesLocations(location: "Sheraton", imageAsset: "assets/images/hers.png", time: "9AM - 11PM", dayOff: "fri off"),
    const ItemBranchesLocations(location: "Sheraton", imageAsset: "assets/images/hers.png", time: "9AM - 11PM", dayOff: "fri off"),
  ];

  final List<AmenitiesItem> amenitiesItems = [
    const AmenitiesItem(title: "Lockers", imageAsset: "assets/images/bathroom.png"),
    const AmenitiesItem(title: "Bathroom", imageAsset: "assets/images/equipment.png"),
    const AmenitiesItem(title: "Equipment", imageAsset: "assets/images/floor.png"),
    const AmenitiesItem(title: "Machines", imageAsset: "assets/images/locker.png"),
    const AmenitiesItem(title: "Floor", imageAsset: "assets/images/machines.png"),
    const AmenitiesItem(
        title: "Body Composition", imageAsset: "assets/images/compo.png"),
  ];

  final List<String> galleryItems = [
    "assets/images/galley1.png",
    "assets/images/galley2.png",
    "assets/images/galley3.png",
    "assets/images/galley3.png",
  ];
}
