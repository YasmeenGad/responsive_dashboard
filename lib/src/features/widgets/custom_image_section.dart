import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';

class CustomImageSection extends StatelessWidget {
  const CustomImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                    style: AppTextStyle.styleSemiBold16(context),
                  ),
                  Text(
                    "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.",
                    style: AppTextStyle.styleRegular12(context),
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
    );
  }
}
