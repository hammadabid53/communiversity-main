import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/Resuable_widgets/custom_core_background.dart';
import '../../mycoins/controller/my_coins_controller.dart';

class MessagesView extends GetView<MyCoinscontroller> {
  @override
  Widget build(BuildContext context) {
    return CustomCoreBackground(
      headertitletext: AppStrings.MY_MESSAGE_TEXT,
      isenabledsearch: false,
      leadingiconimage: AssetPaths.BACK_ICON,
      trailingiconenabled: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_messageslist()],
      ),
    );
  }

  Widget _messageslist() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return ListTile(
            title: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 70.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withAlpha(70),
                                offset: const Offset(2.0, 2.0),
                                blurRadius: 2.0)
                          ],
                          borderRadius: const BorderRadius.all(
                              Radius.circular(AppValues.radius_12)),
                          image: const DecorationImage(
                            image: ExactAssetImage(AssetPaths.AVATAR_IMAGE),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: AppValues.smallPadding,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CustomTextWidget(
                          text: AppStrings.FIRST_NAME_TEXT,
                          style: StyleForText.boldTitlePrimaryColorStyle,
                        ),
                        CustomTextWidget(
                          text: AppStrings.SHORT_LOREM_TEXT,
                          style: StyleForText.listtilestyle,
                        ),
                      ],
                    )),
                  ],
                ),
                const Divider(),
              ],
            ),
          );
        });
  }
}
