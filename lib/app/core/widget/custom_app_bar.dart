import 'package:flutter/material.dart';

import '../utils/ColorExtensions.dart';
import '/app/core/values/app_colors.dart';
import '/app/core/widget/app_bar_title.dart';

//Default appbar customized with the design of our app
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitleText;
  final Color? titleColor;
  final Function? functionOnBack;
  final List<Widget>? actions;
  final bool isBackButtonEnabled;

  CustomAppBar({
    Key? key,
    required this.appBarTitleText,
    this.actions,
    this.isBackButtonEnabled = false,
    this.functionOnBack,
    this.titleColor,
  }) : super(key: key);

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: AppColors.appBarColor,
      backgroundColor: Colors.transparent,
      // backgroundColor: AppColors.colorWhite,
      // backgroundColor: HexColor.fromHex('#8E8E8E'),
      centerTitle: true,
      // toolbarHeight: 0,
      elevation: 0,
      automaticallyImplyLeading: isBackButtonEnabled,
      actions: actions,
      iconTheme: const IconThemeData(color: AppColors.appBarIconColor),
      title: AppBarTitle(
        titleColor: titleColor,
        text: appBarTitleText,
        functionOnBack: functionOnBack,

      ),
    );
  }
}
