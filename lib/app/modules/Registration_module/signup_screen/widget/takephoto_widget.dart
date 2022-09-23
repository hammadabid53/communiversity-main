import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';

import 'package:flutter_getx_template/app/core/widget/ripple.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/values/app_colors.dart';
import '../../../../core/widget/Resuable_widgets/custom_text_widget.dart';
import '../controller/signup_controller.dart';

class BottomsheetWidget extends StatelessWidget {
  const BottomsheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupScreenController>(
        builder: (controller) => Ripple(
              onTap: (() {
                print("camera clicked");
                showModalBottomSheet(
                    context: context,
                    builder: (context) => bottomsheet(context));
              }),
              child: SignupScreenController.s.image == null
                  ? NetworkImageEDITPROFILE(
                      //  sharepr.getString("bearer") != null
                      //         ? NetworkStrings.IMAGE_URL + box.read("image")
                      //:

                      "https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg",
                    )
                  : SizedBox(
                      // height: 90,
                      // width: 90,
                      child: ClipOval(
                        child: FadeInImage(
                            fit: BoxFit.cover,
                            placeholder:
                                const AssetImage(AssetPaths.UPLOAD_ICON),
                            image: FileImage(SignupScreenController.s.image!)),
                      ),
                    ),
            ));
  }

  bottomsheet(BuildContext context) {
    return Container(
      height: 0.30.sh,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          CustomTextWidget(
            text: "Choose Profile Photo",
            fontSize: 2.sp,
            textColor: AppColors.colorPrimary,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  print("gallery");
                  SignupScreenController.s.takePhoto(ImageSource.gallery);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.image, color: AppColors.colorPrimary),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextWidget(
                      text: "Image",
                      fontSize: 2.sp,
                      textColor: AppColors.textColorSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50.w,
              ),
              InkWell(
                onTap: () {
                  print("camera");
                  SignupScreenController.s.takePhoto(ImageSource.camera);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.camera,
                      color: AppColors.colorPrimarySwatch,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextWidget(
                      text: "Camera",
                      fontSize: 2.sp,
                      textColor: AppColors.colorPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget NetworkImageEDITPROFILE(String backgroundImage) {
    return CachedNetworkImage(
      color: AppColors.colorPrimary,
      imageUrl: backgroundImage,
      imageBuilder: (context, imageProvider) => Container(
        margin: EdgeInsets.only(left: 5.w, top: 5.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,

          // borderRadius: BorderRadius.circular(50.0),
          image: DecorationImage(fit: BoxFit.cover, image: imageProvider),
        ),
      ),
      placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(
        color: AppColors.colorPrimary,
      )),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
