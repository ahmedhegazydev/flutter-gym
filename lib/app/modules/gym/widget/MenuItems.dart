import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/MenuItem.dart' as MenuItem;


class MenuItems {
  static const List<MenuItem.MenuItem> firstItems = [home, share, settings];
  static const List<MenuItem.MenuItem> secondItems = [logout];

  static const home = MenuItem.MenuItem(text: 'Home', icon: Icons.home);
  static const share = MenuItem.MenuItem(text: 'Share', icon: Icons.share);
  static const settings = MenuItem.MenuItem(text: 'Settings', icon: Icons.settings);
  static const logout = MenuItem.MenuItem(text: 'Log Out', icon: Icons.logout);

  static Widget buildItem(MenuItem.MenuItem item) {
    return Row(
      children: [
        Icon(
                item.icon,
                color: Colors.white,
                size: 22
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem.MenuItem item) {
    switch (item) {
      case MenuItems.home:
      //Do something
        break;
      case MenuItems.settings:
      //Do something
        break;
      case MenuItems.share:
      //Do something
        break;
      case MenuItems.logout:
      //Do something
        break;
    }
  }
}