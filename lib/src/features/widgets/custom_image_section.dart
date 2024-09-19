import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';

class CustomImageSection extends StatelessWidget {
  const CustomImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 250,
              height: 292,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      12)), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SvgPicture.asset(
                  "assets/images/BoxTips.svg",
                  fit: BoxFit
                      .cover, 
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Save more money",
                        style: AppTextStyle.styleSemiBold16(context),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 120,
                      height: 70,
                      child: Text(
                        "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.",
                        style: AppTextStyle.styleRegular12(context),
                        textAlign: TextAlign.center,
                      ),
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
            child: Center(
              child: Container(
                width: 125, // Set width to half of the image width
                child: MaterialButton(
                  onPressed: () {},
                  color: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      "VIEW TIPS",
                      style: AppTextStyle.styleSemiBold16(context)
                          .copyWith(color: AppColor.whiteColor),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
