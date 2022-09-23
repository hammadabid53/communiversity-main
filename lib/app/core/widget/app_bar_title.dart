import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';

import '../values/text_styles.dart';

class AppBarTitle extends StatelessWidget {
  final String text;

  const AppBarTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(
      text: text,
      style: StyleForText.titleStyleWhite,
      textAlign: TextAlign.center,
    );
  }
}
