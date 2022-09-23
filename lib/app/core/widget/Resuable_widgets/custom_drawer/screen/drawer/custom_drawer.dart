import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_drawer/model/menu_item.dart';
import 'package:flutter_getx_template/app/modules/Core_module/favorites/view/favorites.dart';
import 'package:flutter_getx_template/app/modules/Core_module/messages/view/messages.dart';
import 'package:flutter_getx_template/app/modules/Core_module/mycoins/view/my_coins.dart';
import 'package:flutter_getx_template/app/modules/Core_module/settings/view/setting_view.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/policy_pages/views/privacy_policy.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/policy_pages/views/terms_and_condition.dart';
import 'package:flutter_getx_template/app/modules/main/views/main_view.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '../../../../../values/app_colors.dart';
import '../menu/menu_screen.dart';

class ZoomDrawerWidget extends StatefulWidget {
  const ZoomDrawerWidget({Key? key}) : super(key: key);
  @override
  State<ZoomDrawerWidget> createState() => _ZoomDrawerWidgetState();
}

class _ZoomDrawerWidgetState extends State<ZoomDrawerWidget> {
  ShowMenuItem currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      angle: -15.0,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 10,
          blurRadius: 8,
        ),
      ],
      // boxShadow: [
      //   BoxShadow(
      //     color: AppColors.colorDark.withOpacity(0.3),
      //     spreadRadius: 5,
      //     blurRadius: 5,
      //     offset: const Offset(0, 3), // changes position of shadow
      //   ),
      // ],
      menuScreenWidth: 1.sw,
      mainScreenScale: 0.45.sp,
      menuBackgroundColor: AppColors.colorPrimary,
      // style: DrawerStyle.defaultStyle,
      slideWidth: 260.0.w,

      menuScreen: Builder(
        builder: (context) => MenuScreen(
            currentItem: currentItem,
            onselecteditem: (item) {
              setState(() {
                currentItem = item;
                Get.to(getScreen());
              });
            }),
      ),
      mainScreen: MainView(),
      borderRadius: 40.0,
      disableDragGesture: true,
      androidCloseOnBackTap: true,
      mainScreenTapClose: true,
    );
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.home:
        return const ZoomDrawerWidget();
      case MenuItems.tarheels:
        return MyCoinsView();
      case MenuItems.messages:
        return MessagesView();
      case MenuItems.favorite:
        return FavoriteView();
      case MenuItems.settings:
        return SettingView();
      case MenuItems.termsandcondition:
        return TermsAndConditionView();
      case MenuItems.privacypolicy:
        return PrivacyPolicyView();
      case MenuItems.signuout:

      default:
        return const ZoomDrawerWidget();
    }
  }

//   Widget Screen() {
//     switch (currentItem) {
//       // case MenuItems.home:
//       //   return BottomNavBar();
//       case MenuItems.tarheels:
//         return MyCoinsView();
//       case MenuItems.messages:
//         return MessagesView();
//       case MenuItems.favorite:
//         return FavoriteView();
//       case MenuItems.settings:
//         return SettingView();
//       case MenuItems.termsandcondition:
//         return TermsAndConditionView();
//       case MenuItems.privacypolicy:
//         return PrivacyPolicyView();
//       case MenuItems.signuout:

//     }
//   }
}
