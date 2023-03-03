import 'package:flutter/material.dart';

import '../values/app_colors.dart';
import '/app/core/values/text_styles.dart';

class AppBarTitle extends StatelessWidget {
  final String text;
  final Function? functionOnBack;
  final Color? titleColor;


  const AppBarTitle({Key? key, required this.text, this.functionOnBack, this.titleColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          text,
          // style: pageTitleStyle,
          style:  TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.w600,
              fontWeight: FontWeight.w400,
              height: 1.15,
              // color: AppColors.appBarTextColor
              color: titleColor ?? Colors.black
          ),
          textAlign: TextAlign.center,

        ),
        Row(
          children: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Image.asset(
                  'assets/images/app_bar_back.png',
                ),
              ),
              onTap: (){
                functionOnBack!();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Image.asset(
                'assets/images/app_bar_search.png',
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Image.asset(
                'assets/images/app_bar_notification.png',
              ),
            ),
          ],
        )
      ],
    );
  }
}
