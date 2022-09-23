import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../values/app_values.dart';

class TextFieldContainer extends StatelessWidget {
  final String? hinttext;
  final String? headingText;
  final Color? labeltextcolor;
  void Function()? onTapsuffixicon;
  final bool? isPrefixImageEnable;
  final String? isprefiximage;
  final String? issufiximage;
  final bool? issufixImageEnable;
  final Color? prefixIconColor;
  EdgeInsetsGeometry? contentPadding;
  final Widget? prefixiconWidget;
  final bool? SuffixPathStatus;
  final bool? PrefixPathStatus;
  final double? preiconscalesize;
  final double? suffixiconscalesize;
  final Widget? suffixiconWidget;
  String? labelText;
  final double? PrefixIconWidth;
  FocusNode? focusNode;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  void Function(String)? onChanged;
  Color? textfieldcolor;
  @override
  Key? key;
  bool? readonly;
  bool? obsecureText;
  String? Function(String?)? validator;
  final TextEditingController? controller;
  TextStyle? hintStyle;
  bool? ishadowenabled = true;
  String? errortext;

  TextFieldContainer(
      {this.controller,
      this.prefixiconWidget,
      this.suffixiconscalesize,
      this.ishadowenabled,
      this.PrefixPathStatus,
      this.preiconscalesize,
      this.SuffixPathStatus,
      this.labelText,
      this.textfieldcolor,
      this.errortext,
      this.readonly,
      this.contentPadding,
      this.onTapsuffixicon,
      this.suffixiconWidget,
      this.focusNode,
      this.onChanged,
      this.inputFormatters,
      this.keyboardType,
      this.PrefixIconWidth,
      this.prefixIconColor,
      this.labeltextcolor,
      this.isprefiximage,
      this.issufiximage,
      this.issufixImageEnable,
      this.isPrefixImageEnable,
      this.headingText,
      this.obsecureText = false,
      this.hinttext,
      this.validator,
      this.hintStyle,
      this.key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60.h,
          width: 1.sw,
          margin: EdgeInsets.only(top: 15.h, left: 10.h, right: 10.h),
          decoration: BoxDecoration(
              color:
                  textfieldcolor ?? AppColors.textColorPrimary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30.r)),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 15,
              left: AppValues.largePadding,
              right: AppValues.largePadding),
          child: TextFormField(
            onChanged: onChanged,
            readOnly: readonly ?? false,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            validator: validator,
            focusNode: focusNode,
            obscureText: obsecureText ?? false,
            controller: controller,
            decoration: InputDecoration(
              floatingLabelStyle:
                  const TextStyle(color: AppColors.colorPrimary),
              suffixIcon: suffixiconWidget,
              labelStyle: TextStyle(color: labeltextcolor),
              labelText: labelText,
              prefixIcon: Transform.scale(scale: 0.4, child: prefixiconWidget),
              prefixIconColor: prefixIconColor,
              contentPadding: contentPadding ??
                  EdgeInsets.only(left: 20.w, bottom: 10.h, top: 10.h),
              border: InputBorder.none,
              //   hintText: hinttext,
              hintStyle: hintStyle ??
                  TextStyle(
                    fontSize: 18.sp,
                    color: AppColors.blackColor.withOpacity(0.8),
                  ),
            ),
          ),
        )
      ],
    );
  }
}
