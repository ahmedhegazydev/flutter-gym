import 'package:auto_size_text/auto_size_text.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/ColorExtensions.dart';
import 'package:flutter_getx_template/app/modules/create_membership/controllers/CreateMemberShip_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:video_player/video_player.dart';
import '../../events_and_capms/widget/ReviewsWidget.dart';

import '../../../core/values/app_colors.dart';
import '../../../core/values/text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../gym/widget/GalleryWidget.dart';
import '../controllers/EventsCampsController.dart';
import '../model/ItemRoomType.dart';
import '../widget/ButterFlyAssetVideo.dart';
import '../widget/ChewieListItem.dart';
import '../widget/DotWidget.dart';
import '../widget/OrangeRoundedButton.dart';
import '../widget/SelectRoomWidget.dart';
import '/app/core/base/base_view.dart';
import '/app/core/values/app_values.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/core/widget/paging_view.dart';
import '/app/modules/home/controllers/home_controller.dart';
import '/app/modules/home/widget/item_github_project.dart';
import '/app/core/utils/StringExtension.dart';

class EventsCampsView extends BaseView<EventsCampsController> {
  // CreateMemberShipView() {
  // controller.getGithubGetxProjectList();
  // }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    // return CustomAppBar(
    //   appBarTitleText: 'Title ',
    //   functionOnBack: ()  {
    //   Get.back();
    //   },
    // );
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Padding(
        // padding: const EdgeInsets.all(AppValues.padding),
        padding: const EdgeInsets.all(0),
        // child: ChewieListItem(
        //   videoPlayerController: VideoPlayerController.asset(
        //     'assets/videos/butterflies.mp4',
        //   ),
        //   looping: true,
        // ),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //Center Row contents horizontally,
            crossAxisAlignment: CrossAxisAlignment.start,
            //Center Row contents vertically,
            children: [
              Container(
                width: double.infinity,
                height: 240,
                // color: Colors.red,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Image.asset("assets/images/run.png"),
                    // ChewieListItem(
                    //   videoPlayerController: VideoPlayerController.asset(
                    //     'assets/videos/butterflies.mp4',
                    //   ),
                    //   looping: true,
                    // ),
                    ButterFlyAssetVideo(),
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: CustomAppBar(
                        appBarTitleText: 'Events',
                        titleColor: Colors.white,
                        functionOnBack: () {
                          Get.back();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Image.asset("assets/images/play.png"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Row(
                  children:  [
                    Text("Day Name",
                        // style: TextStyle(
                        //     fontSize: 18, fontWeight: FontWeight.w700),
                        style: GoogleFonts.nunitoSans(
                            fontSize: 18, fontWeight: FontWeight.w700,)
                    ),
                    Spacer(),
                    Text("20/12/2022",
                        // style: TextStyle(
                        //     fontSize: 17, fontWeight: FontWeight.w400),
                        style: GoogleFonts.nunitoSans(fontSize: 17, fontWeight: FontWeight.w500,
                        color: HexColor.fromHex("1C1C1E")
                        )

                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 15, right: 10),
                child: Row(
                  children: [
                    Row(
                      children:  [
                        Text("FRI",
                            // style: TextStyle(
                            //     fontSize: 15, fontWeight: FontWeight.w400),
                            style: GoogleFonts.nunitoSans( fontSize: 15, fontWeight: FontWeight.w400)
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4, right: 4),
                          child: Text("10",
                              // style: TextStyle(
                              //     color: Colors.orange,
                              //     fontSize: 15,
                              //     fontWeight: FontWeight.w400),
                              style: GoogleFonts.nunitoSans(
                                color: Colors.orange,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Text("Feb",
                              // style: TextStyle(
                              //     fontSize: 12, fontWeight: FontWeight.w400),
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400
                              )
                          ),
                        ),
                      ],
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: 4, right: 4),
                      child: Text("_",
                          // style: TextStyle(
                          //     fontSize: 12, fontWeight: FontWeight.w400),
                          style: GoogleFonts.nunitoSans(
                              fontSize: 12, fontWeight: FontWeight.w400
                          )
                      ),
                    ),
                    Row(
                      children:  [
                        Text("TUE",
                            // style: TextStyle(
                            //     fontSize: 15, fontWeight: FontWeight.w400),
                            style: GoogleFonts.nunitoSans(
                                fontSize: 15, fontWeight: FontWeight.w400
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4, right: 4),
                          child: Text("14",
                              // style: TextStyle(
                              //     color: Colors.orange,
                              //     fontSize: 15,
                              //     fontWeight: FontWeight.w400),
                              style: GoogleFonts.nunitoSans(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Text("Feb",
                              // style: TextStyle(
                              //     fontSize: 12, fontWeight: FontWeight.w400),
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 12, fontWeight: FontWeight.w400
                              )
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Image.asset("assets/images/location.png"),
                        const SizedBox(
                          width: 5,
                        ),
                         Text("Sahra benan sf hotel",
                            // style: TextStyle(
                            //     fontSize: 15, fontWeight: FontWeight.w400),
                            style: GoogleFonts.nunitoSans(
                                fontSize: 15, fontWeight: FontWeight.w400
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15,),
                child: Container(
                  alignment: Alignment.center,
                  // padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: HexColor.fromHex("#F47A23"),
                      // border: Border.all(
                      //   color: HexColor.fromHex("8E8E8E"),
                      // ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text("Claim your spot now, booking will end in:",
                            // style: TextStyle(
                            //     color: Colors.white,
                            //     fontSize: 17,
                            //     fontWeight: FontWeight.w700),
                            style: GoogleFonts.nunitoSans(
                              color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                            )
                        ),
                      ),
                      Container(
                        // color: Colors.grey,
                        // width: double.infinity,
                        width: 300,
                        height: 90,
                        alignment: Alignment.center,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.itemDateUnites.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 10),
                                  // const EdgeInsets.all(10),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.center,  //Center Row contents horizontally,
                                // crossAxisAlignment: CrossAxisAlignment.center , //Center Row contents vertically,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          controller.itemDateUnites[index].value,
                                          // style:  TextStyle(
                                          //     color: Colors.white,
                                          //     fontSize: 35,
                                          //     fontWeight: FontWeight.w700),
                                          style: GoogleFonts.oswald(
                                            color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w400
                                          ),
                                        ),
                                        Text(
                                            controller.itemDateUnites[index].unit,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700)),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  index != controller.itemDateUnites.length - 1
                                      ? Container(
                                          width: 0.8,
                                          color: Colors.white,
                                          height: 65,
                                        )
                                      : Container()
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Text("Coaches",
                    // style: TextStyle(
                    //     color: Colors.black,
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.w700),
                    style: GoogleFonts.nunitoSans(
                      color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 0),
                // color: Colors.grey,
                width: double.infinity,
                // width: 250,
                height: 110,
                alignment: Alignment.center,
                child: ScrollSnapList(
                  // child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.itemsCoaches.length,
                  shrinkWrap: true,
                  // reverse: true,
                  // curve: Curves.ease,
                  //   focusOnItemTap: true,
                  initialIndex: 1,
                  selectedItemAnchor: SelectedItemAnchor.END,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                    controller.itemsCoaches[index].imagePath),
                              ),
                              Text(controller.itemsCoaches[index].userName,
                                  style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                              Text(controller.itemsCoaches[index].specialist,
                                  style: TextStyle(
                                      // color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  // itemSize: double.infinity,
                  itemSize: 400,
                  // dynamicItemSize: true,
                  onItemFocus: (value) => {},
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, top: 0, ),
                child: Text("Description",
                    // style: TextStyle(
                    //     color: Colors.black,
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.w700),

                    style: GoogleFonts.nunitoSans(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child:  ReadMoreText(
                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sedef diam nonumy eirmod tempor invidunt ut labore et dolore gmage aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
                  trimLines: 3,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'read more',
                  trimExpandedText: 'read less',
                  // moreStyle: TextStyle(
                  //     fontSize: 10,
                  //     fontWeight: FontWeight.w400,
                  //     color: HexColor.fromHex("F47A23")),
                    moreStyle: GoogleFonts.nunitoSans(
                      fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: HexColor.fromHex("F47A23")
                    )

                ),),

              GalleryWidget(),

              ReviewsWidget(),

              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                alignment: Alignment.center,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 20, height: 20,
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: HexColor.fromHex("#FEAB54"),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(6))),
                    ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(children: [
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 3,
                          ),
                          // decoration: BoxDecoration(
                          //   border: Border(
                          //     bottom: BorderSide(
                          //       color: Colors.red,
                          //       width: 2.0,
                          //     ),
                          //   ),
                          // ),
                          child: Text(
                            "Terms and conditions",
                            // style: TextStyle(
                            //   fontSize: 20,
                            //   color: HexColor.fromHex("#FF6E01"),
                            // ),
                              style: GoogleFonts.nunitoSans(
                                fontSize: 15,
                                color: HexColor.fromHex("#FF6E01"),
                              )
                          ),
                        ),
                            DotWidget(
                          dashColor: HexColor.fromHex("#FF6E01"),
                          dashHeight: 1,
                          dashWidth: 3,
                              totalWidth: 150,
                        )
                        ]),
                      )

                  ],
                ),
              ),

              SelectRoomWidget(),

              Container(
                padding: const EdgeInsets.all(10),
                height: 120,
                width: double.infinity,
                color: HexColor.fromHex("#F6E8DF"),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("price",
                              maxLines: 4, overflow: TextOverflow.ellipsis,
                              // style: TextStyle(
                              //     fontSize: 20,
                              //     fontWeight: FontWeight.w400),
                              style: GoogleFonts.nunitoSans(
                                fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w400
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("1600",
                                    maxLines: 4, overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      // color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 10),
                                child: Text("EGP",
                                    maxLines: 4, overflow: TextOverflow.ellipsis,
                                    // style: TextStyle(
                                    //     fontSize: 10,
                                    //     fontWeight: FontWeight.w400),
                                    style: GoogleFonts.nunitoSans(
                                      fontSize: 10,
                                          fontWeight: FontWeight.w400
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    OrangeRoundedButton(
                      width: 200,
                      filled: true,title: "Count Me In !",callback: () => {

                    },),
                  ],
                ),
              ),


             OrangeRoundedButton(filled: true,title: "Count Me In !",callback: () => {

             },),
            ],
          ),
        ));
  }
}
