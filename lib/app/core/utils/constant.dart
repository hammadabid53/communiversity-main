import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';

//global font

const String RobotofontFamily = 'Roboto';

//global textstyle

TextStyle setTextStyle(
    {color = Colors.white,
    double size = 15,
    weight = FontWeight.normal,
    family = RobotofontFamily}) {
  return TextStyle(
    fontWeight: weight,
    color: color,
    fontSize: size,
    fontFamily: family,
  );
}

final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

//Neumorphisum design for containers

extension Neumorphism on Widget {
  addNeumorphism({
    double borderRadius = 30.0,
    Offset offset = const Offset(0, 3),
    double blurRadius = 5,
    double spreadradius = 3,
    Color bottomShadowColor = AppColors.gradientEndColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            offset: offset,
            blurRadius: blurRadius,
            color: bottomShadowColor,
            spreadRadius: spreadradius,
          ),
        ],
      ),
      child: this,
    );
  }
}
