import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';
import 'package:responsive_dashboard/src/features/widgets/custome_expenses_sections.dart';
import 'package:responsive_dashboard/src/features/widgets/list_tile_percent_indicator_widget.dart';

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
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF9FAFC),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
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
                        child: Stack(
                          children: [
                            AspectRatio(
                              aspectRatio: 0.83,
                              child: SvgPicture.asset(
                                "assets/images/BoxTips.svg",
                                fit: BoxFit.cover,
                                height: 292,
                                width: 250,
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Save more money",
                                        style: AppTextStyle.styleSemiBold16(
                                            context),
                                      ),
                                      Text(
                                        "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.",
                                        style: AppTextStyle.styleRegular12(
                                            context),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16,
                              left: 0,
                              right: 0,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: AppColor.primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    "VIEW TIPS",
                                    style: AppTextStyle.styleSemiBold16(context)
                                        .copyWith(color: AppColor.whiteColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
