import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/events_and_capms/controllers/EventsCampsController.dart';
import 'package:get/get.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../../core/utils/ColorExtensions.dart';
import '../model/ItemRoomType.dart';

class SelectRoomWidget extends StatefulWidget {
  const SelectRoomWidget({Key? key}) : super(key: key);

  @override
  State<SelectRoomWidget> createState() => _SelectRoomWidgetState();
}

class _SelectRoomWidgetState extends State<SelectRoomWidget> {


  List<ItemRoomType> itemsRoomsTypes  = [
    ItemRoomType(roomType: "single room", offerDesc: "one bed in room for one person", price: "1600", unit: "EGP", selected: true),
    ItemRoomType(roomType: "single room", offerDesc: "one bed in room for one person", price: "1600", unit: "EGP", selected: false),
    ItemRoomType(roomType: "single room", offerDesc: "one bed in room for one person", price: "1600", unit: "EGP", selected: false),
  ];
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      width: double.infinity,
      height: 400,
      child: ScrollSnapList(
        scrollPhysics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: itemsRoomsTypes.length,
        // itemCount: EventsCampsController.to.itemsRoomsTypes.length,
        shrinkWrap: true,
        initialIndex: 1,
        // selectedItemAnchor: SelectedItemAnchor.END,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              // title: Text('Item: $index'),
              child:  Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Container(
                      padding: const EdgeInsets.all(17),
                      // alignment: Alignment.topLeft,
                      // width: 300,
                      decoration: BoxDecoration(
                          color: HexColor.fromHex("#FFF1E7"),
                          // border: EventsCampsController.to.itemsRoomsTypes[index].selected ? Border.all(
                          border: (_selectedIndex == index) ? Border.all(
                            color: HexColor.fromHex("FF6E01"),
                            width: 3,
                          ) : null,
                          borderRadius:
                          const BorderRadius.all(
                              Radius.circular(20))),
                      child: Row(
                        children: [
                          // Radio<SingingCharacter>(
                          //   value: SingingCharacter.lafayette,
                          //   groupValue: controller.character,
                          //   onChanged: (SingingCharacter? value) => {
                          //   },
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Image.asset(
                                  "assets/images/selected.png"),
                            ),
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, bottom: 20),
                                // child: Text(EventsCampsController.to.itemsRoomsTypes[index].roomType,
                                child: Text(itemsRoomsTypes[index].roomType,
                                    maxLines: 4, overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      // color: Colors.white,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                // child: Text(EventsCampsController.to.itemsRoomsTypes[index].offerDesc,
                                child: Text(itemsRoomsTypes[index].offerDesc,
                                    maxLines: 4, overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      // color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],

                          )  ,
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                // child: Text(EventsCampsController.to.itemsRoomsTypes[index].price,
                                child: Text(itemsRoomsTypes[index].price,
                                    maxLines: 4, overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      // color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                // child: Text(EventsCampsController.to.itemsRoomsTypes[index].unit,
                                child: Text(itemsRoomsTypes[index].unit,
                                    maxLines: 4, overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      // color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],),
                          )
                        ],
                      )

                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                // color: "#203A4E".toColor(),
                color: Colors.white,
              ),
              // tileColor: selectedIndex == index ? Colors.blue : null,
              onTap: () {
                // showErrorSnackBar("message");
                setState(() {
                  _selectedIndex = index;
                  // for(int i = 0; i <  itemsRoomsTypes.length; i++) {
                  //     setState(() {
                  //       itemsRoomsTypes[i].selected = false;
                  //     });
                  // }
                  // itemsRoomsTypes[index].selected = true;
                });


              },
            ),

          );
        },
        itemSize: 400, onItemFocus: (value ) => {  },
      ),
    );
  }
}

