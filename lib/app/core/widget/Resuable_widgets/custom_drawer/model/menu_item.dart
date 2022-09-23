import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';

class ShowMenuItem {
  final String title;
  final String icon;

  const ShowMenuItem(this.title, this.icon);
}

class MenuItems {
  static const home =
      ShowMenuItem(AppStrings.HOME_DRAWER_TEXT, AssetPaths.HOME_ICON);
  static const tarheels = ShowMenuItem(
      AppStrings.TAR_HEEL_TRACKS_DRAWER, AssetPaths.DRAWER_HEEL_ICON);
  static const messages =
      ShowMenuItem(AppStrings.MY_MESSAGE_TEXT, AssetPaths.MESSAGE_ICON);
  static const favorite =
      ShowMenuItem(AppStrings.FAV_DRAWER_TEXT, AssetPaths.FAVOURITE_ICON);
  static const settings =
      ShowMenuItem(AppStrings.SETTING_DRAWER_TEXT, AssetPaths.SETTING_ICON);
  static const termsandcondition = ShowMenuItem(
      AppStrings.TERMS_CONDITIONS_TEXT, AssetPaths.TERMS_CONDITION_ICON);
  static const privacypolicy =
      ShowMenuItem(AppStrings.PRIVACY_POLICY_TEXT, AssetPaths.PRIVACY_ICON);
  static const signuout =
      ShowMenuItem(AppStrings.SIGNOUT_TEXT, AssetPaths.SIGNOUT_ICON);

  static const all = <ShowMenuItem>[
    home,
    tarheels,
    messages,
    favorite,
    settings,
    termsandcondition,
    privacypolicy,
    signuout
  ];
}
