import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../modules/main/views/main_view.dart';
import '../../../../../values/app_colors.dart';
import '../../../../../values/app_values.dart';
import '../../../../../values/text_styles.dart';
import '../../../../asset_image_view.dart';
import '../../../custom_text_widget.dart';
import '../../model/menu_item.dart';
import '../../widget/custom_header_list.dart';

class MenuScreen extends StatelessWidget {
  final ShowMenuItem currentItem;
  final ValueChanged<ShowMenuItem> onselecteditem;
  const MenuScreen(
      {required this.currentItem, required this.onselecteditem, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorPrimary,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomListItem(
            image: AssetPaths.AVATAR_IMAGE,
            title: AppStrings.JOHN_DOE_TEXT,
            email: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
            address: AppStrings.ADDRESS_TEXT,
          ),

          // const CustomDrawerHeader(),
          const Spacer(),
          ...MenuItems.all.map(buildMenuItem).toList(),
          const Spacer(
            flex: 2,
          )
        ],
      )),
    );
  }

  Widget buildMenuItem(ShowMenuItem item) => SizedBox(
        width: 220.w,
        child: ListTileTheme(
          selectedColor: AppColors.whiteshade,
          child: ListTile(
            selected: currentItem == item,
            selectedTileColor: Colors.black26,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )),
            minLeadingWidth: 20,
            leading: AssetImageView(
              height: AppValues.iconDefaultSize,
              width: AppValues.iconDefaultSize,
              fileName: item.icon,
            ),
            title: CustomTextWidget(
              text: item.title,
              style: StyleForText.titleStyleWhite,
            ),
            onTap: () => onselecteditem(item),
          ),
        ),
      );

 
}
