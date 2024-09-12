import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/src/features/pages/dashboard_view.dart';
class AppRoutes {
  static const String dashbordView = 'dashbordView';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
     dashbordView: (context) => DashboardView()
    };
  }
}
