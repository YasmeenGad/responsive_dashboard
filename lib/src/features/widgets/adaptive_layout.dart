import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/config/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.destopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, destopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < SizeConfig.tablet) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < SizeConfig.desktop) {
        return tabletLayout(context);
      } else {
        return destopLayout(context);
      }
    });
  }
}
