import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_expenses_scroll_tablet_layout.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
          child: CustomExpensesScrollTabletLayout()),
    );
  }
}
