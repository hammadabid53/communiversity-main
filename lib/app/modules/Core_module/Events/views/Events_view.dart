import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_search_field.dart';
import 'package:flutter_getx_template/app/modules/Core_module/Events/controllers/Events_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/widget/Resuable_widgets/custom_core_background.dart';

import '../widgets/tabbarview.dart';
import '/app/core/values/app_values.dart';

class EventsView extends GetView<EventsController> {
  @override
  Widget build(BuildContext context) {
    return CustomCoreBackground(
      stackwidget: const SearchField(),
      leadingiconimage: AssetPaths.DRAWER_ICON,
      headertitletext: AppStrings.EVENTS_TEXT,
      isenabledsearch: true,
      trailingiconenabled: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _tabbarview(),
          _sizedboxheight(),
        ],
      ),
    );
  }

  Widget _sizedboxheight() {
    return const SizedBox(
      height: AppValues.margin_10,
    );
  }

  Widget _tabbarview() {
    return const Tabviewbar();
  }
}
