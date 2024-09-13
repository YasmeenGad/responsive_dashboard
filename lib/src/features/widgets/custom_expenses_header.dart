import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';

class CustomExpensesHeader extends StatelessWidget {
  const CustomExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            "Expenses",
            style: AppTextStyle.styleSemiBold40(context),
          ),
        ),
        subtitle: Text(
          "01 - 25 March, 2020",
          style:
              AppTextStyle.styleRegular16(context).copyWith(color: Colors.grey),
        ),
        trailing: Image.asset(
          "assets/images/Users.png",
          width: 122.96,
          height: 31.2,
        ),
      ),
    );
  }
}
