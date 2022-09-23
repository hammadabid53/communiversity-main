import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../values/app_values.dart';
import '../custom_app_bar.dart';

class CustomCoreBackground extends StatelessWidget {
  String? headertitletext;
  bool? iconvisibility = true;
  final String? leadingiconimage;
  bool? trailingiconenabled = true;

  Widget? child;
  bool? isenabledsearch;
  double? appbarheight;
  Widget? stackwidget;
  CustomCoreBackground(
      {this.child,
      this.leadingiconimage,
      this.iconvisibility,
      this.headertitletext,
      this.isenabledsearch,
      this.stackwidget,
      this.trailingiconenabled,
      this.appbarheight,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            CustomAppBar(
              appBarTitleText: headertitletext.toString(),
              iconImage: leadingiconimage,
              appbarheight: appbarheight,
              trailingIcon: trailingiconenabled,
            ),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: AppValues.extraLargeSpacing_100),
                    child: isenabledsearch == true ? stackwidget : null)),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(
                    bottom: AppValues.kDefaultPadding,
                    left: AppValues.kDefaultPadding,
                    right: AppValues.kDefaultPadding),
                child: child!),
          ),
        )
      ]),
    );
  }

  void _ontap() {
    Get.back();
  }
}
