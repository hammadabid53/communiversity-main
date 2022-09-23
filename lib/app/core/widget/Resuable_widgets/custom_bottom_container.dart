import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_widget.dart';

class CustomBottomContainer extends StatelessWidget {
  // final String title;
  final Function()? onclickTap;
  // bool? isenable = false;

  final String? title1;
  final String? title2;

  CustomBottomContainer({this.title1, this.title2, this.onclickTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onclickTap,
        child: Container(
          margin: const EdgeInsets.only(top: AppValues.extraLargeMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: title1,
                style: StyleForText.titleStyle,
              ),
              CustomTextWidget(
                style: StyleForText.boldTitleStyle,
                text: title2,
                fontSize: 1.2.sp,
              ),
            ],
          ),
        ));
  }
}
