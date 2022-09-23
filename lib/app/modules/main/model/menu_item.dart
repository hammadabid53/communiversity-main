import 'package:flutter/cupertino.dart';

import '/app/modules/main/model/menu_code.dart';

class BottomNavItem {
  final Widget navpointer;
  final Widget iconImage;
  final MenuCode menuCode;
  final String unselectedicon;

  const BottomNavItem(
      {required this.navpointer,
      required this.iconImage,
      required this.menuCode,
      required this.unselectedicon});
}
