import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/routes/app_routes.dart';

void main(List<String> args) {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:AppRoutes.dashbordView ,
      routes: AppRoutes.getRoutes(),
    );
  }
}