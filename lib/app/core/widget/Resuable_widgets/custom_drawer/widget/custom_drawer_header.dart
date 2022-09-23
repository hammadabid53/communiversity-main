import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppValues.smallPadding),
      child: _profilecontent(),
    );
  }

  Widget _profilecontent() {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: ListTile(
          contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 200,
              maxHeight: 0.90.sh,
            ),
            child: Image.asset(AssetPaths.AVATAR_IMAGE, fit: BoxFit.fill),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: AppStrings.JOHN_DOE_TEXT,
                style: StyleForText.titleStyle,
              ),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
                style: StyleForText.titleStyle,
              ),
              CustomTextWidget(
                text: AppStrings.ADDRESS_TEXT,
                style: StyleForText.titleStyle,
              )
            ],
          )),
    );
  }
}
