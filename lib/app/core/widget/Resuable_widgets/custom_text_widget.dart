import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';

class CustomTextWidget extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final Widget? child;
  final String? fontFamily;
  bool? softWrap;
  TextStyle? style;

  CustomTextWidget(
      {this.text,
      this.child,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      this.style,
      this.fontFamily,
      this.maxLines,
      this.textOverflow,
      this.textAlign,
      this.textDecoration,
      this.softWrap});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      softWrap: softWrap,
      style: style ??
          TextStyle(
            fontFamily: fontFamily,
            color: textColor ?? AppColors.textColorWhite,
            fontWeight: fontWeight ?? FontWeight.w400,
            decoration: textDecoration ?? TextDecoration.none,
          ),
      textScaleFactor: fontSize,
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
