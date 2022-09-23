import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/Core_module/home/widget/event_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventsWidget extends StatelessWidget {
  const EventsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
          return EventContainer(
            isenablerow: true,
            height: 0.50.sh,
            width: 1.0.sw,
          );
        });
  }
}
