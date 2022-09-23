import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/values/app_values.dart';
import '../../../core/widget/asset_image_view.dart';
import '/app/core/values/app_colors.dart';
import '/app/modules/main/controllers/bottom_nav_controller.dart';
import '/app/modules/main/model/menu_code.dart';
import '/app/modules/main/model/menu_item.dart';

class BottomNavBar extends StatelessWidget {
  final Function(MenuCode menuCode)? onNewMenuSelected;

  BottomNavBar({Key? key, this.onNewMenuSelected}) : super(key: key);

  final navController = BottomNavController();

  final Key bottomNavKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Color selectedItemColor = AppColors.colorPrimary;
    Color unselectedItemColor = AppColors.lightGreyColor;
    List<BottomNavItem> navItems = _getNavItems();

    return Obx(() => BottomNavigationBar(
          key: bottomNavKey,
          items: navItems
              .map(
                (BottomNavItem navItem) => BottomNavigationBarItem(
                  activeIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      navItem.navpointer,
                      const SizedBox(
                        height: AppValues.smallPadding,
                      ),
                      SizedBox(
                        height: AppValues.iconDefaultSize,
                        width: AppValues.iconDefaultSize,
                        child: navItems.indexOf(navItem) ==
                                navController.selectedIndex
                            ? navItem.iconImage
                            : AssetImageView(
                                fileName: navItem.unselectedicon,
                                height: AppValues.iconDefaultSize,
                                width: AppValues.iconDefaultSize,
                              ),
                      )
                    ],
                  ),
                  icon: SizedBox(
                    height: AppValues.iconDefaultSize,
                    width: AppValues.iconDefaultSize,
                    child:
                        navItems.indexOf(navItem) == navController.selectedIndex
                            ? navItem.iconImage
                            : AssetImageView(
                                fileName: navItem.unselectedicon,
                                height: AppValues.iconDefaultSize,
                                width: AppValues.iconDefaultSize,
                              ),
                  ),
                  label: "",
                ),
              )
              .toList(),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.textColorWhite,
          selectedItemColor: selectedItemColor,
          unselectedItemColor: unselectedItemColor,
          currentIndex: navController.selectedIndex,
          onTap: (index) {
            navController.updateSelectedIndex(index);
            onNewMenuSelected!(navItems[index].menuCode);
          },
        ));
  }

  List<BottomNavItem> _getNavItems() {
    return [
      BottomNavItem(
        navpointer: navpointer(),
        iconImage: _iconImage(
          AssetPaths.HOME_SELECTED_ICON,
        ),
        unselectedicon: AssetPaths.HOME_UNSELECTED_ICON,
        menuCode: MenuCode.Home,
      ),
      BottomNavItem(
          navpointer: navpointer(),
          iconImage: _iconImage(
            AssetPaths.GAME_SELECTED_ICON,
          ),
          unselectedicon: AssetPaths.GAME_UNSELECTED_ICON,
          menuCode: MenuCode.Game),
      BottomNavItem(
        navpointer: navpointer(),
        iconImage: _iconImage(AssetPaths.EVENTS_SELECTED_ICON),
        menuCode: MenuCode.Events,
        unselectedicon: AssetPaths.EVENTS_UNSELECTED_ICON,
      ),
      BottomNavItem(
        navpointer: navpointer(),
        iconImage: _iconImage(AssetPaths.PROFILE_SELECTED_ICON),
        menuCode: MenuCode.Profile,
        unselectedicon: AssetPaths.UNSELECTED_PROFILE_ICON,
      )
    ];
  }

  Widget navpointer() {
    return Container(
      color: AppColors.colorPrimary,
      height: 5.h,
      width: 30.w,
    );
  }

  Widget _iconImage(String? image) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image!)),
          boxShadow: [
            BoxShadow(
              color: AppColors.lightGreyColor.withOpacity(0.4),
              blurRadius: 5.sp,
              offset: const Offset(0, 5),
            )
          ]),
    );
  }
}
