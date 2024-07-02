import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/ColorExtensions.dart';

class OrangeRoundedButton extends StatefulWidget {

  String? title = "";
  bool? filled = false;
  Function? callback;
  double? width = 100;
   OrangeRoundedButton({Key? key,
    this.title,
    this.filled,
    this.callback,
    this.width,

  }) : super(key: key);

  @override
  State<OrangeRoundedButton> createState() => _OrangeRoundedButtonState();
}

class _OrangeRoundedButtonState extends State<OrangeRoundedButton> {

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: widget.width,
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            height: 55,
            child:(widget.filled == true) ?  ElevatedButton(
                child:  Text(
                  // "previous member".toUpperCase(),
                  //   "Count me in !",
                    widget.title ?? "",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
                style:  ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        HexColor.fromHex("#FF6E01")),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                                color:
                                HexColor.fromHex("#FF6E01"))))),
                onPressed: () => {
                  widget.callback!()
                  // Get.toNamed(Routes.GYM);
                }) : TextButton(
                child:  Text(
                  // "New Member".toUpperCase(),
                    "New Member",
                    // style: TextStyle(
                    //     fontSize: 17, fontWeight: FontWeight.w500),
                    style: GoogleFonts.nunitoSans(
                        fontSize: 17, fontWeight: FontWeight.w500
                    )
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(15)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        HexColor.fromHex("#FF6E01")),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                                color: HexColor.fromHex("#FF6E01"))))),
                onPressed: () => {
                  widget.callback!()
                  // Get.toNamed(Routes.CreateMemberShipProfile);
                }),
          ),
        ],
      ),
    );
  }
}
