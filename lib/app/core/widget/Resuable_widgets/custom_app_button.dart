import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/constant.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_widget.dart';

class CustomAppBtn extends StatefulWidget {
  final String title;
  void Function()? onclickPressed;

  CustomAppBtn({this.onclickPressed, required this.title, Key? key})
      : super(key: key);

  @override
  State<CustomAppBtn> createState() => _CustomAppBtnState();
}

class _CustomAppBtnState extends State<CustomAppBtn> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Entry.scale(
      child: GestureDetector(
          onTap: widget.onclickPressed,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 0.06.sw),
            padding: EdgeInsets.symmetric(vertical: 0.05.sw),
            width: 1.sw,
            decoration: BoxDecoration(
              color: AppColors.colorPrimary,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: CustomTextWidget(
                style: StyleForText.boldTitleWhiteStyle,
                maxLines: 1,
                text: widget.title,
              ),
            ),
          ).addNeumorphism(
              blurRadius: 0.5,
              spreadradius: 0.1,
              offset: const Offset(0, 15),
              bottomShadowColor: AppColors.transparentColor.withOpacity(0.02))),
    );
  }
}
