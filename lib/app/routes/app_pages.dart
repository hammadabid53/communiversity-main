import 'package:flutter_getx_template/app/modules/Core_module/Events/bindings/Event_details_binding.dart';
import 'package:flutter_getx_template/app/modules/Core_module/Events/views/Events_details.dart';
import 'package:flutter_getx_template/app/modules/Core_module/Game/bindings/Game_binding.dart';
import 'package:flutter_getx_template/app/modules/Core_module/Game/views/Game_view.dart';
import 'package:flutter_getx_template/app/modules/Core_module/Notification/binding/notification_binding.dart';
import 'package:flutter_getx_template/app/modules/Core_module/Notification/view/notification_view.dart';
import 'package:flutter_getx_template/app/modules/Core_module/Redeem/binding/redeem_binding.dart';
import 'package:flutter_getx_template/app/modules/Core_module/Redeem/view/redeem_view.dart';
import 'package:flutter_getx_template/app/modules/Core_module/favorites/binding/favorite_binding.dart';
import 'package:flutter_getx_template/app/modules/Core_module/favorites/view/favorites.dart';
import 'package:flutter_getx_template/app/modules/Core_module/messages/binding/messages_binding.dart';
import 'package:flutter_getx_template/app/modules/Core_module/messages/view/messages.dart';
import 'package:flutter_getx_template/app/modules/Core_module/mycoins/binding/my_coins_binding.dart';
import 'package:flutter_getx_template/app/modules/Core_module/mycoins/view/my_coins.dart';
import 'package:flutter_getx_template/app/modules/Core_module/settings/binding/setting_binding.dart';
import 'package:flutter_getx_template/app/modules/Core_module/settings/view/setting_view.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/change_password/binding/change_password_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/change_password/view/change_password.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/policy_pages/bindings/privacy_policy_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/policy_pages/bindings/terms_and_condition_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/policy_pages/views/privacy_policy.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/policy_pages/views/terms_and_condition.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/profile_module/Profile/bindings/profile_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/profile_module/Profile/views/profile_view.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/forgot_password/binding/forgot_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/forgot_password/view/forgot_password.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/login_screen/binding/login_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/login_screen/view/login_view.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/otp_screen/binding/otp_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/otp_screen/view/otp_screen.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/profile_module/edit_profile/binding/edit_profile_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/profile_module/edit_profile/view/edit_profile.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/reset_password/binding/reset_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/reset_password/view/reset_screen.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/binding/signup_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/view/signup.dart';

import 'package:flutter_getx_template/app/modules/Registration_module/splashscreen/binding/splash_screen_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/splashscreen/view/Splashview.dart';
import 'package:get/get.dart';

import '../core/widget/Resuable_widgets/custom_drawer/screen/drawer/custom_drawer.dart';
import '../modules/Core_module/Events/bindings/Events_binding.dart';
import '../modules/Core_module/Events/views/Events_view.dart';

import '../modules/Core_module/home/bindings/home_binding.dart';
import '../modules/Core_module/home/views/home_view.dart';
import '/app/modules/main/bindings/main_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN_ROUTE;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => const ZoomDrawerWidget(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN_ROUTE,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.EVENTS_SCREEN_ROUTE,
      page: () => EventsView(),
      binding: EventsBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN_ROUTE,
      page: () => SplashView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN_ROUTE,
      page: () => LoginView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_SCREEN_ROUTE,
      page: () => SignupScreenView(),
      binding: SignupScreenBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD_SCREEN_ROUTE,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERFICATION_ROUTE,
      page: () => OtpScreenView(),
      binding: OtpScreenBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD_ROUTE,
      page: () => ResetScreenView(),
      binding: ResetScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_DETAIL_ROUTE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.GAME_ROUTE,
      page: () => GameView(),
      binding: GameBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE_ROUTE,
      page: () => EditProfileView(),
      binding: EditprofileBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS_ROUTE,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION_ROUTE,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE_ROUTE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.TERMS_AND_CONDITION_ROUTE,
      page: () => TermsAndConditionView(),
      binding: TermsAndCondtionBinding(),
    ),
    GetPage(
      name: _Paths.PRIVACY_POLICY_ROUTE,
      page: () => PrivacyPolicyView(),
      binding: PrivacyBinding(),
    ),
    GetPage(
      name: _Paths.MY_COINS_ROUTE,
      page: () => MyCoinsView(),
      binding: MyCoinsBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGES_ROUTE,
      page: () => MessagesView(),
      binding: MessagesBinding(),
    ),
    GetPage(
      name: _Paths.EVENTS_DETAILS_ROUTE,
      page: () => EventdetailsView(),
      binding: EventsDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD_ROUTE,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.REDEEM_ROUTE,
      page: () => RedeemView(),
      binding: RedeemBinding(),
    ),
  ];
}
