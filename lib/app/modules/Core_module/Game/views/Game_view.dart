import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/Resuable_widgets/custom_core_background.dart';
import '../controllers/Game_controller.dart';

class GameView extends GetView<GameController> {
  @override
  Widget build(BuildContext context) {
    return CustomCoreBackground(
      leadingiconimage: AssetPaths.DRAWER_ICON,
      headertitletext: AppStrings.GAME_TEXT,
      isenabledsearch: false,
      trailingiconenabled: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [],
      ),
    );
  }
}
