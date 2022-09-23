import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_assets_path.dart';
import '../../utils/app_strings.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppValues.kDefaultPadding),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(AppValues.circularImageSize_30),
          ),
          suffixIcon: AssetImageView(
            fileName: AssetPaths.SEARCH_ICON,
            scale: 2.5.sp,
          ),
          hintText: AppStrings.SEARCH_TEXT,
          hintStyle: StyleForText.cardSubtitleStyle,
          fillColor: Colors.white,
          filled: true,
        ),
      ),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 25,
            offset: Offset(2, 2),
          ),
        ],
      ),
    );
  }
}
