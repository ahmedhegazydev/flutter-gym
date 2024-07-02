import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:flutter_getx_template/app/modules/events_and_capms/controllers/EventsCampsController.dart';
import '../../../core/utils/ColorExtensions.dart';

class ReviewsWidget extends StatefulWidget {
  const ReviewsWidget({Key? key}) : super(key: key);

  @override
  State<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.lazyPut(()=>EventsCampsController());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Row(
            children: [
              Text(
                "Reviews",
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
              Spacer(),
              Text("view more",
                  // style: TextStyle(
                  //     color: HexColor.fromHex("#F2540A"),
                  //     fontSize: 15,
                  //     fontWeight: FontWeight.w300),
                  style: GoogleFonts.nunitoSans(
                      color: HexColor.fromHex("#F2540A"),
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                  )
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, left: 20, right: 0),
          // color: Colors.grey,
          width: double.infinity,
          // width: 250,
          height: 160,
          // alignment: Alignment.center,
          child: ScrollSnapList(
            // child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: EventsCampsController.to.itemsReviews.length,
            shrinkWrap: true,
            // reverse: true,
            // curve: Curves.ease,
            //   focusOnItemTap: true,
            initialIndex: 1,
            selectedItemAnchor: SelectedItemAnchor.END,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 5),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  width: 300,
                  decoration: BoxDecoration(
                      color: HexColor.fromHex("#D9D9D9"),
                      // color: Colors.green,
                      // border: Border.all(
                      //   color: HexColor.fromHex("8E8E8E"),
                      // ),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                                EventsCampsController.to.itemsReviews[index].imagePath),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(EventsCampsController.to.itemsReviews[index].userName,
                                // style: TextStyle(
                                //     fontSize: 17,
                                //     fontWeight: FontWeight.w700),
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 17,
                                      fontWeight: FontWeight.w700
                                )
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: HexColor.fromHex("#FF6E01"),
                                // color: Colors.green,
                                // border: Border.all(
                                //   color: HexColor.fromHex("8E8E8E"),
                                // ),
                                borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              child: Text(EventsCampsController.to.itemsReviews[index].rating,
                                  // style: TextStyle(
                                  //     color: Colors.white,
                                  //     fontSize: 12,
                                  //     fontWeight: FontWeight.w700),
                                  style: GoogleFonts.nunitoSans(
                                    color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700
                                  )
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(EventsCampsController.to.itemsReviews[index].date,
                              // style: TextStyle(
                              //     fontSize: 10,
                              //     fontWeight: FontWeight.w400),
                              style: GoogleFonts.nunitoSans(
                                fontSize: 10,
                                    fontWeight: FontWeight.w400
                              )
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
                        child: Text(EventsCampsController.to.itemsReviews[index].desc,
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
              );
            },
            // itemSize: double.infinity,
            itemSize: 400,
            // dynamicItemSize: true,
            onItemFocus: (value) => {},
          ),
        ),
      ],
    );
  }
}
