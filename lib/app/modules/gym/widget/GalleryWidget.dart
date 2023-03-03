import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/ColorExtensions.dart';
import '../controllers/GymController.dart';

class GalleryWidget extends StatefulWidget {
  const GalleryWidget({Key? key}) : super(key: key);

  @override
  State<GalleryWidget> createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget> {

  @override
  void initState() {
    super.initState();
    Get.lazyPut(()=>GymController());
    }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Row(
          children: [
            Text(
              "Gallery",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text("view more",
                  style: TextStyle(
                      color: HexColor.fromHex("#F2540A"),
                      fontSize: 15,
                      fontWeight: FontWeight.w300)),
            )
          ],
        ),
      ),

      Container(
          padding: const EdgeInsets.only(left: 10, top: 0, right: 10),
          width: double.infinity,
          height: 400,
          child :
          MasonryGridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            // semanticChildCount: 0,
            itemCount: GymController.to.galleryItems.length,
            itemBuilder: (context,index){
              var _height = Random().nextInt(100) + 150;
              return  Container(
                height: _height.toDouble(),
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(48),
                      child: Image.asset(
                        GymController.to.galleryItems[index],
                        fit: BoxFit.cover,
                        height: _height.toDouble(),
                      ),
                    ),
                  ),
                ),
              );
            },
          )

      ),
    ],);
  }
}
