import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/features/widgets/custome_drawer.dart';
import 'package:responsive_dashboard/src/features/widgets/custome_expenses_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomeDrawer(),
          ),
          Expanded(flex: 3, child: CustomeExpensesWidget())
        ],
      ),
    );
  }
}
