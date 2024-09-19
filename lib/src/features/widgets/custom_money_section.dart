import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_image_section.dart';
import 'package:responsive_dashboard/src/features/widgets/list_tile_percent_indicator_widget.dart';

class CustomMoneySection extends StatelessWidget {
  const CustomMoneySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF9FAFC),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Where your money go?",
                  style: AppTextStyle.styleSemiBold25(context)
                      .copyWith(color: AppColor.whiteBlueColor),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            SliverToBoxAdapter(
              child: ListTilePercentIndicatorWidget(
                title: "Food and Drinks",
                trailing: "872.400",
                value: 0.25,
              ),
            ),
            SliverToBoxAdapter(
              child: ListTilePercentIndicatorWidget(
                title: "Shopping",
                trailing: "1.378.200",
                value: 0.55,
              ),
            ),
            SliverToBoxAdapter(
              child: ListTilePercentIndicatorWidget(
                title: "Housing",
                trailing: "928.500",
                value: 0.45,
              ),
            ),
            SliverToBoxAdapter(
              child: ListTilePercentIndicatorWidget(
                title: "Transportation",
                trailing: "420.700",
                value: 0.20,
              ),
            ),
            SliverToBoxAdapter(
              child: ListTilePercentIndicatorWidget(
                title: "Vehicle",
                trailing: "520.000",
                value: 0.45,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            SliverToBoxAdapter(
              child: CustomImageSection(),
            ),
          ],
        ),
      ),
    );
  }
}
