import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/ColorExtensions.dart';
import 'package:flutter_getx_template/app/modules/create_membership/controllers/CreateMemberShip_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:readmore/readmore.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import '../../events_and_capms/widget/OrangeRoundedButton.dart';
import '../../events_and_capms/widget/ReviewsWidget.dart';
import '../model/MenuItem.dart' as MenuItem;

import '../../../core/values/app_colors.dart';
import '../../../core/values/text_styles.dart';
import '../controllers/GymController.dart';
import '../model/AmenitiesItem.dart';
import '../widget/GalleryWidget.dart';
import '../widget/MenuItems.dart';
import '/app/core/base/base_view.dart';
import '/app/core/values/app_values.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/core/widget/paging_view.dart';
import '/app/modules/home/controllers/home_controller.dart';
import '/app/modules/home/widget/item_github_project.dart';
import '/app/core/utils/StringExtension.dart';

class GymView extends BaseView<GymController> {
  // CreateMemberShipView() {
  // controller.getGithubGetxProjectList();
  // }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Title ',
      functionOnBack: () {
        Get.back();
      },
      //   IconButton(
      //     icon: const Icon(
      //       Icons.search,
      //       color: Colors.grey,
      //     ),
      //     onPressed: () => {
      //
      //     },
      //   ),
      // ],
    );
    // return null;
  }

  @override
  Widget body(BuildContext context) {
    return Padding(
        // padding: const EdgeInsets.all(AppValues.padding),
        padding: const EdgeInsets.only(
            // left: 10,
            // right: 10,
            top: AppValues.padding,
            bottom: AppValues.padding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  // top: AppValues.padding,
                  // bottom: AppValues.padding
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/hers.png",
                          width: 70,
                          height: 70,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Hers",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500)),
                            Text("Women's Fitness Center ",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: HexColor.fromHex("7B7B7C"),
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                        const Spacer(),
                        DropdownButton2(
                          customButton: Image.asset("assets/images/dots.png"),
                          customItemsHeights: [
                            ...List<double>.filled(
                                MenuItems.firstItems.length, 48),
                            8,
                            ...List<double>.filled(
                                MenuItems.secondItems.length, 48),
                          ],
                          items: [
                            ...MenuItems.firstItems.map(
                              (item) => DropdownMenuItem<MenuItem.MenuItem>(
                                value: item,
                                child: MenuItems.buildItem(item),
                              ),
                            ),
                            const DropdownMenuItem<Divider>(
                                enabled: false, child: Divider()),
                            ...MenuItems.secondItems.map(
                              (item) => DropdownMenuItem<MenuItem.MenuItem>(
                                value: item,
                                child: MenuItems.buildItem(item),
                              ),
                            ),
                          ],
                          onChanged: (value) {
                            MenuItems.onChanged(context, value as MenuItem.MenuItem);
                          },
                          itemHeight: 48,
                          itemPadding:
                              const EdgeInsets.only(left: 16, right: 16),
                          dropdownWidth: 160,
                          dropdownPadding:
                              const EdgeInsets.symmetric(vertical: 6),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.redAccent,
                          ),
                          dropdownElevation: 8,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 230,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.7,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        // onPageChanged: callbackFunction,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                // Image border
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(48),
                                  // Image radius
                                  child: Image.asset('assets/images/slider_card.png',
                                      fit: BoxFit.cover),
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  // padding: const EdgeInsets.only(left: 10, right: 10, top: 10, ),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: HexColor.fromHex("F9F9F9"),
                      // border: Border.all(
                      //   color: HexColor.fromHex("8E8E8E"),
                      // ),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Why Choose Us",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      const SizedBox(
                        height: 10,
                      ),
                      ReadMoreText(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedef diam nonumy eirmod tempor invidunt ut labore et dolore gmage aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
                        trimLines: 4,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'read more',
                        trimExpandedText: 'read less',
                        moreStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: HexColor.fromHex("F47A23")),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: HexColor.fromHex("#FEEDE0"),
                            // border: Border.all(
                            //   color: HexColor.fromHex("8E8E8E"),
                            // ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Amenities",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500)),

                            Container(
                              padding: EdgeInsets.only(left: 20, right: 0, top: 15),
                              // color: Colors.grey,
                              width: double.infinity,
                              // width: 250,
                              height: 80,
                              alignment: Alignment.center,
                              child: ScrollSnapList(
                                // child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.amenitiesItems.length,
                                shrinkWrap: true,
                                initialIndex: 1,
                                selectedItemAnchor: SelectedItemAnchor.END,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 5),
                                    child: Container(
                                          child: Column(children: [
                                            Container(
                                                child: Image.asset(controller.amenitiesItems[index].imageAsset),
                                            width: 40, height: 40,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text(controller.amenitiesItems[index].title),
                                            ),
                                          ],),
                                        ),
                                  );
                                },
                                // itemSize: double.infinity,
                                itemSize: 400,
                                // dynamicItemSize: true,
                                onItemFocus: (value) => {},
                              ),
                            ),

                          ],
                        ),
                      ),


                      GalleryWidget(),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                        child: Row(
                          children: [
                            Text(
                              "Branches Locations",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Text("view more",
                                style: TextStyle(
                                    color: HexColor.fromHex("#F2540A"),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300))
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 20, right: 0),
                        // color: Colors.grey,
                        width: double.infinity,
                        // width: 250,
                        height: 130,
                        // alignment: Alignment.center,
                        child: ScrollSnapList(
                          // child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.itemsBranchesLocations.length,
                          shrinkWrap: true,
                          initialIndex: 1,
                          selectedItemAnchor: SelectedItemAnchor.END,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10, right: 5),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      // padding: const EdgeInsets.only(top: 10),
                                      // alignment: Alignment.topLeft,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            color: HexColor.fromHex("#D27A42"),
                                            borderRadius:
                                            const BorderRadius.all(Radius.circular(20))),
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 0, bottom: 5 , left: 5),
                                        child: Container(
                                          // padding: const EdgeInsets.only(top: 10),
                                          // alignment: Alignment.topLeft,
                                            width: 115,
                                            height: 130,
                                            decoration: BoxDecoration(
                                                color: HexColor.fromHex("#FEEDE0"),
                                                borderRadius:
                                                const BorderRadius.all(Radius.circular(20))),
                                            child:                   Image.asset(
                                                controller.itemsBranchesLocations[index].imageAsset,
                                              // fit: BoxFit.fill,
                                            )

                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 7),
                                            child: Text(controller.itemsBranchesLocations[index].location.toUpperCase(),
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w500)),
                                          ),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 0),
                                              child: Text(controller.itemsBranchesLocations[index].time.toUpperCase(),
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 0),
                                              child: Text(controller.itemsBranchesLocations[index].dayOff.toUpperCase(),
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w400)),
                                            ),
                                        ],),
                                      )
                                    ],
                                  )
                                ],
                              )
                            );
                          },
                          // itemSize: double.infinity,
                          itemSize: 400,
                          // dynamicItemSize: true,
                          onItemFocus: (value) => {},
                        ),
                      ),

                      ReviewsWidget(),

                      Container(
                        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            // Container(
                            //   width: double.infinity,
                            //   height: 55,
                            //   child: ElevatedButton(
                            //       child: const Text(
                            //         // "previous member".toUpperCase(),
                            //           "Start my fitness journey",
                            //           style: TextStyle(
                            //               fontSize: 20, fontWeight: FontWeight.w500)),
                            //       style: ButtonStyle(
                            //           foregroundColor: MaterialStateProperty.all<Color>(
                            //               Colors.white),
                            //           backgroundColor: MaterialStateProperty.all<Color>(
                            //               HexColor.fromHex("#FF6E01")),
                            //           shape: MaterialStateProperty.all<
                            //               RoundedRectangleBorder>(
                            //               RoundedRectangleBorder(
                            //                   borderRadius: BorderRadius.circular(30),
                            //                   side: BorderSide(
                            //                       color:
                            //                       HexColor.fromHex("#FF6E01"))))),
                            //       onPressed: () {
                            //         // Get.toNamed(Routes.GYM);
                            //       }),
                            // ),

                            OrangeRoundedButton(filled: true,title: "Start my fitness journey",callback: () => {

                            },),
                          ],
                        ),
                      ),


                    ],
                  )),
            ],
          ),
        ));
  }
}
