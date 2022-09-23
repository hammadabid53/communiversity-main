import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/values/app_colors.dart';
import '../../../../../core/values/app_values.dart';

class DropDownMenuItem extends StatefulWidget {
  const DropDownMenuItem({Key? key}) : super(key: key);

  @override
  State<DropDownMenuItem> createState() => _DropDownMenuItemState();
}

class _DropDownMenuItemState extends State<DropDownMenuItem> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.0.sp),
      margin: EdgeInsets.only(left: 0.03.sw, right: 0.03.sw, top: 0.02.sh),
      width: 1.sw,
      decoration: BoxDecoration(
        color: AppColors.textColorPrimary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
          
          iconSize: 40.sp,
          iconEnabledColor: Colors.black,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          decoration: InputDecoration(
            floatingLabelStyle: const TextStyle(color: AppColors.colorPrimary),
            border: InputBorder.none,

            label: const Text(AppStrings.CHOOSE_PROGRAM),
            prefixIcon: Padding(
                padding: const EdgeInsets.all(AppValues.smallPadding),
                child: ImageIcon(
                  const AssetImage(AssetPaths.GRADUATE_ICON),
                  size: 14.sp,
                )),

            // fillColor: AppColors.textColorPrimary.withOpacity(0.2),
          ),
          dropdownColor: AppColors.pageBackground,
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
              
            });
          },
          items: <String>[
            'Graduate Student',
            'UnderGraduate Student',
            'PostGraduate Student',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: CustomTextWidget(
                text: value,
                style: StyleForText.cardSmallTagStyle,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
