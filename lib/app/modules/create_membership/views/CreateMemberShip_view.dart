import 'package:auto_size_text/auto_size_text.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/ColorExtensions.dart';
import 'package:flutter_getx_template/app/modules/create_membership/controllers/CreateMemberShip_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/values/app_colors.dart';
import '../../../core/values/text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../events_and_capms/widget/OrangeRoundedButton.dart';
import '/app/core/base/base_view.dart';
import '/app/core/values/app_values.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/core/widget/paging_view.dart';
import '/app/modules/home/controllers/home_controller.dart';
import '/app/modules/home/widget/item_github_project.dart';
import '/app/core/utils/StringExtension.dart';

class CreateMemberShipView extends BaseView<CreateMemberShipController> {
  // CreateMemberShipView() {
  // controller.getGithubGetxProjectList();
  // }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Title ',
      functionOnBack: ()  {
      Get.back();
      },
      // actions: [
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
    // return PagingView(
    //   onRefresh: () async {
    //     controller.onRefreshPage();
    //   },
    //   onLoadNextPage: () {
    //     controller.onLoadNextPage();
    //   },
    //   child: Padding(
    //     padding: const EdgeInsets.all(AppValues.padding),
    // child: Obx(
    //   () => ListView.separated(
    //     shrinkWrap: true,
    //     itemCount: controller.projectList.length,
    //     primary: false,
    //     physics: const NeverScrollableScrollPhysics(),
    //     itemBuilder: (context, index) {
    //       var model = controller.projectList[index];
    //
    //       return ItemGithubProject(dataModel: model);
    //     },
    //     separatorBuilder: (BuildContext context, int index) =>
    //         const SizedBox(height: AppValues.smallMargin),
    //   ),
    // ),
    // ),

    return Padding(
        padding: const EdgeInsets.all(AppValues.padding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                alignment: Alignment.center, // This is needed
                child: Image.asset(
                  "assets/images/national_id.png",
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  "Create Membership Profile",
                  // style: pageTitleStyle,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      height: 1.15,
                      color: AppColors.appBarTextColor),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 23, left: 20, right: 20),
                child: Text(
                  "please enter your national id / passport \n and your phone number .",
                  // style: pageTitleStyle,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      height: 1.40,
                      color: AppColors.appBarTextColor),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Text(
                  "Choose the verification method",
                  // style: pageTitleStyle,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      height: 1.40,
                      color: AppColors.appBarTextColor),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
                child: Row(
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          Image.asset("assets/images/selected.png"),
                          const Padding(
                            padding: EdgeInsets.only(top: 0, left: 6, right: 0),
                            child: Text(
                              "National ID",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                  height: 1.40,
                                  color: AppColors.appBarTextColor),
                            ),
                          ),
                        ],
                      ),
                      flex: 1,
                    ),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        //Center Row contents horizontally,
                        children: [
                          Image.asset("assets/images/selected.png"),
                          const Padding(
                            padding: EdgeInsets.only(top: 0, left: 6, right: 0),
                            child: Text(
                              "Passport",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                  height: 1.40,
                                  color: AppColors.appBarTextColor),
                            ),
                          ),
                        ],
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: HexColor.fromHex("D9D9D9"),
                      ),
                      color: HexColor.fromHex("D9D9D9"),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50))),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("assets/images/user.png"),
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(50),
                      //    ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "Passport",
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 20), //Imp Line
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: HexColor.fromHex("D9D9D9"),
                      ),
                      color: HexColor.fromHex("D9D9D9"),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50))),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Row(
                          children: [
                            Image.asset("assets/images/eg.png"),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              "+20",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w300,
                                  height: 1.40,
                                  color: AppColors.appBarTextColor),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset("assets/images/arrow.png"),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 7, bottom: 7),
                              child: Container(
                                height: 40,
                                width: 1,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        onTap: () {
                          showCountryPicker(
                            context: context,
                            showPhoneCode: true,
                            // optional. Shows phone code before the country name.
                            onSelect: (Country country) {
                              print('Select country: ${country.displayName}');
                            },
                          );
                        },
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Flexible(child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Mobile Number",
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 20), //Imp Line
                        ),
                      )),
                    ],
                  )),
              // Container(
              //   padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
              //   child: Column(
              //     children: [
              //       const SizedBox(
              //         height: 20.0,
              //       ),
              //       Container(
              //         width: double.infinity,
              //         height: 55,
              //         child: ElevatedButton(
              //             child: const Text(
              //                 // "previous member".toUpperCase(),
              //                 "Submit",
              //                 style: TextStyle(
              //                     fontSize: 20, fontWeight: FontWeight.w500)),
              //             style: ButtonStyle(
              //                 foregroundColor: MaterialStateProperty.all<Color>(
              //                     Colors.white),
              //                 backgroundColor: MaterialStateProperty.all<Color>(
              //                     HexColor.fromHex("#FF6E01")),
              //                 shape: MaterialStateProperty.all<
              //                         RoundedRectangleBorder>(
              //                     RoundedRectangleBorder(
              //                         borderRadius: BorderRadius.circular(30),
              //                         side: BorderSide(
              //                             color:
              //                                 HexColor.fromHex("#FF6E01"))))),
              //             onPressed: () => {}),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              //   child: Column(
              //     children: [
              //       const SizedBox(
              //         height: 20.0,
              //       ),
              //       Container(
              //         width: double.infinity,
              //         height: 55,
              //         child: ElevatedButton(
              //             child: const Text(
              //                 // "previous member".toUpperCase(),
              //                 "Gym",
              //                 style: TextStyle(
              //                     fontSize: 20, fontWeight: FontWeight.w500)),
              //             style: ButtonStyle(
              //                 foregroundColor: MaterialStateProperty.all<Color>(
              //                     Colors.white),
              //                 backgroundColor: MaterialStateProperty.all<Color>(
              //                     HexColor.fromHex("#FF6E01")),
              //                 shape: MaterialStateProperty.all<
              //                         RoundedRectangleBorder>(
              //                     RoundedRectangleBorder(
              //                         borderRadius: BorderRadius.circular(30),
              //                         side: BorderSide(
              //                             color:
              //                                 HexColor.fromHex("#FF6E01"))))),
              //             onPressed: ()  {
              //             Get.toNamed(Routes.GYM);
              //
              //         }),
              //       ),
              //     ],
              //   ),
              // ),

              OrangeRoundedButton(filled: true,title: "Submit",callback: () => {
                // Get.toNamed(Routes.GYM)
              },),
              OrangeRoundedButton(filled: true,title: "Gym",callback: () => {
              Get.toNamed(Routes.GYM)
              },),
              OrangeRoundedButton(filled: true,title: "Events and Camps",callback: () => {
              Get.toNamed(Routes.EVENTS_AND_CAMPS)
              },),

              // Container(
              //   padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              //   child: Column(
              //     children: [
              //       const SizedBox(
              //         height: 20.0,
              //       ),
              //       Container(
              //         width: double.infinity,
              //         height: 55,
              //         child: ElevatedButton(
              //             child: const Text(
              //                 // "previous member".toUpperCase(),
              //                 "Events and Camps",
              //                 style: TextStyle(
              //                     fontSize: 20, fontWeight: FontWeight.w500)),
              //             style: ButtonStyle(
              //                 foregroundColor: MaterialStateProperty.all<Color>(
              //                     Colors.white),
              //                 backgroundColor: MaterialStateProperty.all<Color>(
              //                     HexColor.fromHex("#FF6E01")),
              //                 shape: MaterialStateProperty.all<
              //                         RoundedRectangleBorder>(
              //                     RoundedRectangleBorder(
              //                         borderRadius: BorderRadius.circular(30),
              //                         side: BorderSide(
              //                             color:
              //                                 HexColor.fromHex("#FF6E01"))))),
              //             onPressed: () {
              //             Get.toNamed(Routes.EVENTS_AND_CAMPS);
              //             }),
              //       ),
              //     ],
              //   ),
              // ),

            ],
          ),
        ));
  }
}
