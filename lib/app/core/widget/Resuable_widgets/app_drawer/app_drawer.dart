// import 'package:flutter/material.dart';
// import 'package:flutter_getx_template/app/core/values/app_colors.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// import '../../app_assets_path.dart';


// class AppDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     return ClipRRect(
//       borderRadius: const BorderRadius.only(
//           topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
//       child: Drawer(
//         backgroundColor: AppColors.disabledButtonBgColor,
//         child: Padding(
//           padding: EdgeInsets.all(kDefaultPadding),
//           child: Column(
//             // padding: EdgeInsets.zero,
//             children: <Widget>[
//               _createHeader(context),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Container(
//                     color: AppColors.gradientEndColor,
//                     child: GetBuilder<AuthController>(
//                       init: AuthController(),
//                       builder: (controller) => Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           _createDrawerItem(AssetPaths.PASTORDER_ICON,
//                               AppStrings.PASTORDERSICON_TEXT, () {
//                             Get.toNamed(AppRouteName.ORDERS_ROUTE);
//                           }, context),
//                           _createDrawerItem(AssetPaths.CARDDETAILS_ICON,
//                               AppStrings.CARD_DETAILS_TEXT, () {
//                             Get.toNamed(AppRouteName.CARD_DETAILS_ROUTE);
//                           }, context),
//                           // _createDrawerItem(AssetPaths.ORDERSTATUS_ICON,
//                           //     AppStrings.ORDERICON_TEXT, () {
//                           //   Get.toNamed(AppRouteName.ORDERS_ROUTE);
//                           // }, context),
//                           _createDrawerItem(
//                               AssetPaths.CONTACT_ICON, AppStrings.CONTACT_TEXT,
//                               () {
//                             Get.toNamed(AppRouteName.CONTACT_US_ROUTE);
//                           }, context),
//                           _createDrawerItem(AssetPaths.SETTINGS_ICON,
//                               AppStrings.SETTINGSICON_TEXT, () {
//                             Get.toNamed(AppRouteName.SETTINGS_ROUTE);
//                           }, context),
//                           _createDrawerItem(AssetPaths.LOGOUT_ICON,
//                               AppStrings.LOGOUTICON_TEXT, () async {
//                             AuthController.i.logout();

//                             Get.offAllNamed(
//                                 AppRouteName.SOCIAL_LOGIN_SCREEN_ROUTE);
//                           }, context),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _createHeader(context) {
//     return DrawerHeader(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Container(
//           // color: AppColor.WHITE_COLOR,
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       GestureDetector(
//                         onTap: () {
//                           Get.back();
//                         },
//                         child: Image.asset(
//                             fit: BoxFit.cover,
//                             scale: 3.sp,
//                             AssetPaths.CLOSE_ICON),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               editProfileWidget(),
//               SizedBox(
//                 height: 10.h,
//               ),
//               Divider(
//                 color: AppColor.WHITE_COLOR,
//                 thickness: 1,
//                 height: 5.0.h,
//               )
//             ],
//           ),
//         ));
//   }

//   Widget _createDrawerItem(
//       String iconimage, String text, GestureTapCallback onTap, context) {
//     return Container(
//       color: AppColor.SECONDARY_COLOR,
//       child: Padding(
//         padding: EdgeInsets.only(right: kDefaultPadding),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ListTile(
//               title: Row(
//                 children: <Widget>[
//                   Image.asset(scale: 5.sp, iconimage),
//                   Padding(
//                     padding: EdgeInsets.only(left: kDefaultPadding),
//                     child: CustomTextWidget(
//                       text: text,
//                       fontSize: 1.2.sp,
//                       fontWeight: FontWeight.w500,
//                       textColor: AppColor.WHITE_COLOR,
//                     ),
//                   )
//                 ],
//               ),
//               onTap: onTap,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: kDefaultPadding),
//               child: Divider(
//                 color: AppColor.WHITE_COLOR,
//                 thickness: 1,
//                 height: 5.0.h,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget editProfileWidget() {
//     return Row(
//       children: [
//         GestureDetector(
//             onTap: () {
//               // Get.to(UserProfile(),);
//             },
//             child: ProfilePictureWidget(
//               isEditIconEnable: false,
//             )),
//         SizedBox(
//           width: 10.w,
//         ),
//         FittedBox(
//           fit: BoxFit.cover,
//           child: Container(
//             width: 0.30.sw,
//             // color: AppColor.BLACK_COLOR,
//             child: CustomTextWidget(
//                 maxLines: 2,
//                 softWrap: true,
//                 text: box.read("name") ?? AppStrings.USER_NAME_TEXT),
//           ),
//         )
//       ],
//     );
//   }
// }
