import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_chart.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_expenses_header.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_monday_section.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_today_section.dart';

class CustomeExpensesSections extends StatelessWidget {
  const CustomeExpensesSections({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: const CustomExpensesHeader(),
        ),
        SliverToBoxAdapter(
          child: const SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(
          child: const CustomChart(),
        ),
        SliverToBoxAdapter(
          child: const SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            "Today",
            style: AppTextStyle.styleSemiBold16(context)
                .copyWith(color: AppColor.darkBlueColor),
          ),
        ),
        SliverToBoxAdapter(
          child: const Divider(),
        ),
        const CustomTodaySection(),
        SliverToBoxAdapter(
          child: const SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            "Monday, 23 March 2020",
            style: AppTextStyle.styleSemiBold16(context)
                .copyWith(color: AppColor.darkBlueColor),
          ),
        ),
        SliverToBoxAdapter(
          child: const Divider(),
        ),
        CustomMondaySection(),
      ],
    );
  }
}
