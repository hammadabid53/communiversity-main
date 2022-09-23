import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:grouped_list/grouped_list.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';

import '../../../../core/values/app_values.dart';
import '../../../../core/widget/Resuable_widgets/custom_core_background.dart';
import '../controller/notification_controller.dart';

class NotificationView extends GetView<Notificationcontroller> {
  bool value = false;
  final List _elements = [
    {'name': 'John', 'group': 'Today'},
    {'name': 'Will', 'group': 'Yesterday'},
    {'name': 'Beth', 'group': 'Today'},
    {'name': 'Miranda', 'group': 'Yesterday'}
  ];

  @override
  Widget build(BuildContext context) {
    // const Color activeColor = Color.fromARGB(255, 52, 199, 89);
    return CustomCoreBackground(
      headertitletext: AppStrings.NOTIFICATION_TEXT,
      isenabledsearch: false,
      leadingiconimage: AssetPaths.BACK_ICON,
      trailingiconenabled: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [_NotificationList()],
      ),
    );
  }

  Widget _NotificationList() {
    return SizedBox(
      height: 1.sh,
      child: GroupedListView<dynamic, String>(
        elements: _elements,
        groupBy: (element) => element['group'],
        groupComparator: (value1, value2) => value2.compareTo(value1),
        itemComparator: (item1, item2) =>
            item1['name'].compareTo(item2['name']),
        order: GroupedListOrder.DESC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(AppValues.padding_4),
          child: CustomTextWidget(
            textAlign: TextAlign.center,
            text: value,
            style: StyleForText.cardTitleStyle,
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            elevation: 1.0,
            margin: const EdgeInsets.symmetric(
                horizontal: AppValues.margin_10, vertical: AppValues.margin_4),
            child: SizedBox(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppValues.smallPadding,
                    vertical: AppValues.padding_4),
                title: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 70.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                              // color: Colors.lightGreen,
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
