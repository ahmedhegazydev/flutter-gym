import 'package:get/get.dart';

import '../model/ItemCoach.dart';
import '../model/ItemDateUnites.dart';
import '../model/ItemReview.dart';
import '../model/ItemRoomType.dart';
import '/app/core/base/base_controller.dart';
import '/app/core/base/paging_controller.dart';
import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/repository/github_repository.dart';
import '/app/modules/home/model/github_project_ui_data.dart';

class EventsCampsController extends BaseController {

  SingingCharacter? character = SingingCharacter.lafayette;
  static EventsCampsController get to => Get.find<EventsCampsController>();


  var itemDateUnites = [
    ItemDateUnites(value: "0", unit: "days"),
    ItemDateUnites(value: "12", unit: "hrs"),
    ItemDateUnites(value: "36", unit: "mins"),
    ItemDateUnites(value: "06", unit: "secs"),
  ];


  var itemsCoaches = [
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
    ItemCoach(imagePath: "assets/images/girl.png", userName: "Ahmed", specialist: "Coach" ),
  ];


  var itemsReviews = [
    ItemReview(imagePath: "assets/images/girl.png", userName: "Ahmed", rating: "4.8", date: "20/10/2022", desc: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."),
    ItemReview(imagePath: "assets/images/girl.png", userName: "Ahmed", rating: "4.8", date: "20/10/2022", desc: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."),
    ItemReview(imagePath: "assets/images/girl.png", userName: "Ahmed", rating: "4.8", date: "20/10/2022", desc: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."),
    ItemReview(imagePath: "assets/images/girl.png", userName: "Ahmed", rating: "4.8", date: "20/10/2022", desc: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."),
    ItemReview(imagePath: "assets/images/girl.png", userName: "Ahmed", rating: "4.8", date: "20/10/2022", desc: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."),
    ItemReview(imagePath: "assets/images/girl.png", userName: "Ahmed", rating: "4.8", date: "20/10/2022", desc: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."),
    ItemReview(imagePath: "assets/images/girl.png", userName: "Ahmed", rating: "4.8", date: "20/10/2022", desc: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."),
  ];


  // var itemsRoomsTypes = [
  //   ItemRoomType(roomType: "single room", offerDesc: "one bed in room for one person", price: "1600", unit: "EGP", selected: true),
  //   ItemRoomType(roomType: "single room", offerDesc: "one bed in room for one person", price: "1600", unit: "EGP", selected: false),
  //   ItemRoomType(roomType: "single room", offerDesc: "one bed in room for one person", price: "1600", unit: "EGP", selected: false),
  //   ];

}
