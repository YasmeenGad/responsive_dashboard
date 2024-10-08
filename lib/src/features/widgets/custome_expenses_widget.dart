import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_money_section.dart';
import 'package:responsive_dashboard/src/features/widgets/custome_expenses_sections.dart';

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
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                child: CustomeExpensesSections(),
              ),
            ),
            Expanded(
              flex: 1,
              child: CustomMoneySection(),
            ),
          ],
        ),
      ),
    );
  }
}
