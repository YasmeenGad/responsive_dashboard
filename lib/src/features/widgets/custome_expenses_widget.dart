import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';

class CustomeExpensesWidget extends StatelessWidget {
  const CustomeExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
