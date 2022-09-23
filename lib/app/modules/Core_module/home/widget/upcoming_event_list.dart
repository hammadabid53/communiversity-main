import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/Core_module/home/widget/event_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingListview extends StatelessWidget {
  const UpcomingListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return EventContainer(
            width: 0.50.sw,
            isenablerow: false,
          );
        });
  }
}
