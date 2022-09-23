import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpContainer extends StatefulWidget {
  const OtpContainer({Key? key}) : super(key: key);

  @override
  State<OtpContainer> createState() => _OtpContainerState();
}

class _OtpContainerState extends State<OtpContainer> {
  TextEditingController textEditingController = TextEditingController();

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  StreamController<ErrorAnimationType>? errorController;
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      enableActiveFill: false,
      appContext: context,
      length: 6,
      blinkWhenObscuring: true,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
          activeColor: AppColors.textColorPrimary.withOpacity(0.2),
          inactiveColor: AppColors.lightGreyColor,
          shape: PinCodeFieldShape.circle,
          fieldHeight: 60,
          fieldWidth: 50,
          activeFillColor: Colors.white,
          selectedColor: AppColors.textColorPrimary.withOpacity(0.2),
          selectedFillColor: AppColors.textColorPrimary.withOpacity(0.2)),
      cursorColor: AppColors.blackColor,
      animationDuration: const Duration(milliseconds: 300),
      errorAnimationController: errorController,
      controller: textEditingController,
      keyboardType: TextInputType.number,
      boxShadows: [
        BoxShadow(
          offset: const Offset(0, 1),
          color: AppColors.textColorPrimary.withOpacity(0.1),
          blurRadius: 10,
        )
      ],
      onCompleted: (v) {
        debugPrint("Completed");
      },
      onChanged: (value) {
        debugPrint(value);
        setState(() {
          currentText = value;
        });
      },
      beforeTextPaste: (text) {
        debugPrint("Allowing to paste $text");

        return true;
      },
    );
  }
}
