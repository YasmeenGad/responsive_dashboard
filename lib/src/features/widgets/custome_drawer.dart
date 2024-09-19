import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';
import 'package:responsive_dashboard/src/features/widgets/custome_user_details.dart';

class CustomeDrawer extends StatefulWidget {
  const CustomeDrawer({super.key});

  @override
  _CustomeDrawerState createState() => _CustomeDrawerState();
}

class _CustomeDrawerState extends State<CustomeDrawer> {
  int activeIndex = 0;
  List<String> data = [
    "Dashboard",
    "Expenses",
    "Wallets",
    "Summary",
    "Accounts",
    "Settings"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: CustomeUserDetails(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 80,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                Color textColor = (index == activeIndex)
                    ? AppColor.whiteColor
                    : Colors.grey;
    
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16,left: 20, right: 20),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          data[index],
                          style:
                              AppTextStyle.styleSemiBold25(context).copyWith(
                            color: textColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: data.length,
            ),
          ),
        ],
      ),
    );
  }
}
