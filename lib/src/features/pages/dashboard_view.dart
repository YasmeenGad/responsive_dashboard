import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/config/size_config.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/features/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/src/features/widgets/custome_drawer.dart';
import 'package:responsive_dashboard/src/features/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/src/features/widgets/mobile_layout.dart';
import 'package:responsive_dashboard/src/features/widgets/tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> keyScaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffoldState,
      backgroundColor: AppColor.primaryColor,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    keyScaffoldState.currentState?.openDrawer();
                    setState(() {});
                  },
                  icon: Icon(Icons.menu, color: AppColor.whiteColor,)),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.5,
              child: CustomeDrawer())
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        destopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
