import 'package:flutter/cupertino.dart';

class ItemRoomType {
   String roomType = "";
   String offerDesc = "";
   String price = "";
   String unit = "";
   bool selected = false;

   ItemRoomType({
    required this.roomType,
    required this.offerDesc,
    required this.price,
    required this.unit,
    required this.selected,
  });
}


enum SingingCharacter { lafayette, jefferson }
