import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';

class EventsCheckbox extends StatefulWidget {
  const EventsCheckbox({Key? key}) : super(key: key);

  @override
  State<EventsCheckbox> createState() => _EventsCheckboxState();
}

class _EventsCheckboxState extends State<EventsCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // Color getColor(Set<MaterialState> states) {
    //   const Set<MaterialState> interactiveStates = <MaterialState>{
    //     MaterialState.pressed,
    //     MaterialState.hovered,
    //     MaterialState.focused,
    //   };
    //   if (states.any(interactiveStates.contains)) {
    //     return AppColors.textColorWhite;
    //   }
    //   return AppColors.blackColor;
    // }

    return Theme(
      data: ThemeData(
          // checked color
          // primarySwatch: AppColors.lightGreyColor,
          // border color
          unselectedWidgetColor: Colors.black),
      child: Checkbox(
      
        // side: BorderSide(color: AppColors.blackColor),
        activeColor: AppColors.textColorWhite,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppValues.padding_4)),
        checkColor: AppColors.blackColor,
        // fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}
