import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '/app/bindings/initial_binding.dart';
import '/app/core/values/app_colors.dart';
import '/app/routes/app_pages.dart';
import 'app/core/utils/app_strings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
  await GetStorage.init();

  HttpOverrides.global = MyHttpOverrides();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return GetMaterialApp(
            transitionDuration: 400.milliseconds,
            defaultTransition: Transition.rightToLeftWithFade,
            debugShowCheckedModeBanner: false,
            title: AppStrings.APP_TITLE_TEXT,
            initialRoute: AppPages.INITIAL,
            initialBinding: InitialBinding(),
            getPages: AppPages.routes,
            theme: ThemeData(
              fontFamily: RobotofontFamily,
              backgroundColor: AppColors.pageBackground,
              colorScheme: ThemeData().colorScheme.copyWith(
                    primary: AppColors.colorPrimary,
                  ),
            ),
          );
        });
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
