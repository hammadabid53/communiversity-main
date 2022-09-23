import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'custom_text_widget.dart';

class LabeledCheckbox extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  const LabeledCheckbox(
      {Key? key,
      required this.label,
      required this.padding,
      this.onTap,
      required this.value,
      required this.onChanged})
      : super(key: key);
  final Function()? onTap;
  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: <Widget>[
          Checkbox(
            activeColor: AppColors.colorPrimary,
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue!);
            },
          ),
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: CustomTextWidget(
                text: label,
                fontSize: 1.sp,
                textColor: AppColors.barrierColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
