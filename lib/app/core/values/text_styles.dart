import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/app/core/values/app_colors.dart';

abstract class StyleForText {
  static const centerTextStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.centerTextColor,
  );

  static const errorTextStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: AppColors.errorColor,
      wordSpacing: sqrt1_2
      
      
      );

  static const greyDarkTextStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.textColorGreyDark,
      height: 1.45);

  static const textColorSecondarySubtitleStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.textColorSecondary,
      height: 1.45);

  static const whiteText16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static const whiteText18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static const whiteText22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const whiteText32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static const cyanText16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textColorCyan,
  );

  static const cyanText32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: AppColors.textColorCyan,
  );

  static const dialogSubtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textColorPrimary,
  );

  static const labelStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 1.8,
  );

  static final labelStylePrimaryTextColor = labelStyle.copyWith(
    color: AppColors.textColorPrimary,
    height: 1,
  );

  static final labelStyleAppPrimaryColor = labelStyle.copyWith(
    color: AppColors.colorPrimary,
    height: 1,
  );

  static final labelStyleGrey =
      labelStyle.copyWith(color: const Color(0xFF323232).withOpacity(0.5));

  static final labelCyanStyle =
      labelStyle.copyWith(color: AppColors.textColorCyan);

  static const labelStyleWhite = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 1.8,
    color: Colors.white,
  );

  static const appBarSubtitleStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.25,
      color: AppColors.pageBackground);

  static const cardTitleStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      height: 1.2,
      color: AppColors.textColorPrimary);

  static const cardTitleCyanStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.colorPrimary,
  );

  static const cardSubtitleStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.2,
      color: AppColors.textColorGreyLight);

  static const titleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.34,
  );

  static const settingsItemStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const listtilestyle = TextStyle(
      fontSize: 12.0, color: Colors.black54, fontWeight: FontWeight.normal);

  final cardTagStyle = titleStyle.copyWith(color: AppColors.textColorGreyDark);

  static const titleStyleWhite = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.pageBackground);

  static const inputFieldLabelStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.34,
    color: AppColors.textColorPrimary,
  );

  static const cardSmallTagStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 1.2,
      color: AppColors.textColorGreyDark);

  static const pageTitleStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      height: 1.15,
      color: AppColors.appBarTextColor);

  static final pageTitleBlackStyle =
      pageTitleStyle.copyWith(color: AppColors.textColorPrimary);

  static const appBarActionTextStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColors.colorDark,
  );

  static const pageTitleWhiteStyle = TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      height: 1.15,
      color: AppColors.pageBackground);

  static const extraBigTitleStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w600,
    height: 1.12,
  );

  static final extraBigTitleCyanStyle =
      extraBigTitleStyle.copyWith(color: AppColors.textColorCyan);

  static const bigTitleStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    height: 1.15,
  );

  static const mediumTitleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 1.15,
  );

  static const descriptionTextStyle = TextStyle(
    fontSize: 16,
  );

  static final bigTitleCyanStyle =
      bigTitleStyle.copyWith(color: AppColors.textColorCyan);

  static final bigTitleWhiteStyle = TextStyle(
    fontSize: 3.sp,
    fontWeight: FontWeight.w700,
    height: 1.15,
    color: Colors.white,
  );

  static const boldTitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.34,
  );
  static final boldTitleWhiteStyle =
      boldTitleStyle.copyWith(color: AppColors.textColorWhite);

  static final boldTitlestyle =
      boldTitleStyle.copyWith(color: AppColors.barrierColor);

  static final boldTitleSecondaryColorStyle =
      boldTitleStyle.copyWith(color: AppColors.textColorSecondary);

  static final boldTitlePrimaryColorStyle =
      boldTitleStyle.copyWith(color: AppColors.colorDark);
}
