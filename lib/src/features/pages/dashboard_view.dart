import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/features/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/src/features/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/src/features/widgets/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: AdaptiveLayout(
        mobileLayout: (context) => Container(),
        tabletLayout: (context) => TabletLayout(),
        destopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
