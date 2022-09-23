import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';

import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widget/Resuable_widgets/custom_text_widget.dart';
import 'checkbox.dart';
import 'events_widget.dart';

class Tabviewbar extends StatefulWidget {
  const Tabviewbar({Key? key}) : super(key: key);

  @override
  State<Tabviewbar> createState() => _TabviewbarState();
}

class _TabviewbarState extends State<Tabviewbar>
    with SingleTickerProviderStateMixin {
  bool check1 = false;
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.lightGreyColor.withOpacity(0.4),
                    blurRadius: 5.sp,
                    offset: const Offset(0, 5),
                  )
                ],
                color: AppColors.textColorWhite,
                borderRadius:
                    BorderRadius.circular(AppValues.circularImageSize_30)),
            height: 0.10.sh,
            width: 1.sw,
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: TabBar(
                controller: tabController,
                unselectedLabelColor: AppColors.lightGreyColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 5.0,
                labelStyle: StyleForText.labelStyle,
                unselectedLabelStyle: StyleForText.labelStyle,
                labelColor: AppColors.colorPrimary,
                indicatorColor: AppColors.colorPrimary,
                tabs: const [
                  Tab(text: AppStrings.UPCOMING_EVENT_TEXT),
                  Tab(
                    text: AppStrings.PREVIOUS_EVENT_TEXT,
                  ),
                ],
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
          child: SizedBox(
            height: 40.0.h,
            //    color: Colors.yellow,
            child: Row(
              children: [
                Transform.scale(scale: 1.5, child: const EventsCheckbox()),
                CustomTextWidget(
                  text: AppStrings.VIEW_ONLY_FAVORITES_TEXT,
                  style: StyleForText.titleStyle,
                ),
                const Spacer(),
                const Icon(
                  Icons.filter_alt_rounded,
                  color: AppColors.colorPrimary,
                  size: 35.0,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: AppValues.smallPadding,
              right: AppValues.smallPadding,
              bottom: AppValues.smallPadding),
          child: SizedBox(
            height: 260.0.h,
            child: TabBarView(
                controller: tabController,
                children: const [EventsWidget(), EventsWidget()]),
          ),
        )
      ],
    );
  }
}
    
    
    
    
    
    
    
    
    
  //     ListView.builder(
  //         // physics: BouncingScrollPhysics(),
  //         shrinkWrap: true,
  //         scrollDirection: Axis.horizontal,
  //         itemCount: 2,
  //         itemBuilder: (context, index) {
  //           return Column(
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.all(AppValues.padding),
  //                 child: Row(
  //                   children: [
  //                     InkWell(
  //                       onTap: () {
  //                         setState(() {
  //                           selectedindex = index;
  //                         });
  //                         print("index$index");
  //                       },
  //                       child: CustomTextWidget(
  //                         fontSize: 1.3.sp,
  //                         fontWeight: FontWeight.bold,
  //                         // style: StyleForText.boldTitleStyle,
  //                         text: AppStrings.UPCOMING_EVENT_TEXT,
  //                         textColor: selectedindex == index
  //                             ? AppColors.colorPrimary
  //                             : AppColors.lightGreyColor,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               Container(
  //                 color: selectedindex == index
  //                     ? AppColors.colorPrimary
  //                     : AppColors.transparentColor,
  //                 width: 0.12.sw,
  //                 height: 0.01.sh,
  //               )
  //             ],
  //           );
  //         }),
  //   ).addNeumorphism(
  //       blurRadius: 5,
  //       spreadradius: 3,
  //       offset: const Offset(0, 3),
  //       bottomShadowColor: AppColors.textColorGreyDark.withOpacity(0.3));
  // }

