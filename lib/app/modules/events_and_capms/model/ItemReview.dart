import 'package:flutter/cupertino.dart';

class ItemReview {
  final String imagePath;
  final String userName;
  final String rating;
  final String date;
  final String desc;

  const ItemReview({
    required this.imagePath,
    required this.userName,
    required this.rating,
    required this.date,
    required this.desc,
  });
}