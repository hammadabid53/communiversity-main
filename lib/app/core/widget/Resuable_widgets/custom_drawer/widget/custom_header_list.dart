import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../values/text_styles.dart';
import '../../custom_text_widget.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    required this.image,
    required this.title,
    required this.email,
    required this.address,
  });

  final String image;
  final String title;
  final String email;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppValues.largePadding, horizontal: AppValues.smallPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                height: 120.h,
                width: 200.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image)))),
          ),
          Expanded(
            flex: 2,
            child: _Description(
              title: title,
              email: email,
              address: address,
            ),
          ),
        ],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    required this.title,
    required this.email,
    required this.address,
  });

  final String title;
  final String email;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          AppValues.smallPadding, AppValues.smallPadding, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomTextWidget(
            text: title,
            style: StyleForText.whiteText22,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: AppValues.padding_2)),
          CustomTextWidget(
            text: email,
            style: StyleForText.titleStyleWhite,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: AppValues.padding_2)),
          CustomTextWidget(
            text: address,
            style: StyleForText.titleStyleWhite,
          ),
        ],
      ),
    );
  }
}
