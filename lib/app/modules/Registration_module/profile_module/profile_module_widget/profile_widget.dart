import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWidget extends StatelessWidget {
  String? title, subtitle;

  ProfileWidget({this.title, this.subtitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: AppValues.kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            fontSize: 1.2.sp,
            text: title,
            style: StyleForText.boldTitleStyle,
          ),
          CustomTextWidget(
            fontSize: 1.sp,
            text: subtitle,
            style: StyleForText.cardSubtitleStyle,
          )
        ],
      ),
    );
  }
}
