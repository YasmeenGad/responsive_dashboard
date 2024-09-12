import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';

class CustomeUserDetails extends StatelessWidget {
  const CustomeUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/userProfile.png",
            width: 72,
            height: 72,
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              "Samantha",
              style: AppTextStyle.styleSemiBold30(context),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              "samantha@email.com",
              style: AppTextStyle.styleRegular17(context)
                  .copyWith(color: AppColor.whiteColor.withOpacity(0.5)),
            ),
          )
        ],
      ),
    );
  }
}
