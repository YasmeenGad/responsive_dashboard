import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_chart.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_expenses_header.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_today_section.dart';

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
          child: Row(children: [
            Expanded(flex: 2, child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal:50),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: const CustomExpensesHeader(),
                  ),
                  SliverToBoxAdapter(
                    child: const SizedBox(height: 20,),
                  ),
                  SliverToBoxAdapter(
                    child: const CustomChart(),
                  ),
                  SliverToBoxAdapter(
                    child: const SizedBox(height: 40,),
                  ),
                  SliverToBoxAdapter(
                    child: Text("Today",style: AppTextStyle.styleSemiBold16(context).copyWith(color: AppColor.darkBlueColor),),
                  ),
                  SliverToBoxAdapter(
                    child: const Divider(),
                  ),
                  const CustomTodaySection()
                ],
              ),
            )),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF9FAFC),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                )),
          ])),
    );
  }
}
