import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/ColorExtensions.dart';
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

class HomeView extends BaseView<HomeController> {
  // HomeView() {
  // controller.getGithubGetxProjectList();
  // }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Title '
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
        child: Column(
          children: [
            Image.asset(
              "assets/images/rectangle.png",
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "Are You A Previous Member?",
                // style: pageTitleStyle,
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                    height: 1.15,
                    color: AppColors.appBarTextColor),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 23, left: 20, right: 20),
              child: Text(
                "Have you ever bought any previous \n package of this facility ?!",
                // style: pageTitleStyle,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    height: 1.40,
                    color: AppColors.appBarTextColor),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                        child: const Text(
                            // "previous member".toUpperCase(),
                            "Previous Member",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500)),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                HexColor.fromHex("#FF6E01")),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(
                                        color: HexColor.fromHex("#FF6E01"))))),
                        onPressed: () => {}),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Container(
                  //   width: double.infinity,
                  //   height: 55,
                  //   child: TextButton(
                  //       child: const Text(
                  //           // "New Member".toUpperCase(),
                  //           "New Member",
                  //           style: TextStyle(
                  //               fontSize: 17, fontWeight: FontWeight.w500)),
                  //       style: ButtonStyle(
                  //           padding: MaterialStateProperty.all<EdgeInsets>(
                  //               const EdgeInsets.all(15)),
                  //           foregroundColor: MaterialStateProperty.all<Color>(
                  //               HexColor.fromHex("#FF6E01")),
                  //           shape: MaterialStateProperty.all<
                  //                   RoundedRectangleBorder>(
                  //               RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(30),
                  //                   side: BorderSide(
                  //                       color: HexColor.fromHex("#FF6E01"))))),
                  //       onPressed: () {
                  //         Get.toNamed(Routes.CreateMemberShipProfile);
                  //       }),
                  // ),

                  OrangeRoundedButton(filled: false,title: "New Member",callback: () => {
                            Get.toNamed(Routes.CreateMemberShipProfile)

                  },),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //Center Row contents horizontally,
              crossAxisAlignment: CrossAxisAlignment.center,
              //Center Row contents vertically,
              children: [
                Image.asset(
                  "assets/images/circle-emphasishint.png",
                  width: 17,
                  height: 17,
                ),
                const SizedBox(
                  width: 9,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "This helps us to provide the best offers for \n prices to previous members, if any offers",
                    // style: pageTitleStyle,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        height: 1.40,
                        color: AppColors.appBarTextColor),
                    // textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
