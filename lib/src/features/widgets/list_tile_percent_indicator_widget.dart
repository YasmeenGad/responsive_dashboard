import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';

class ListTilePercentIndicatorWidget extends StatelessWidget {
  const ListTilePercentIndicatorWidget({super.key, required this.title, required this.trailing, required this.value});
  final String title, trailing;
  final double value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(title,style: AppTextStyle.styleMedium13(context),)),
      subtitle: LinearProgressIndicator(
        value: value,
        backgroundColor: AppColor.whiteColor,
        valueColor:  AlwaysStoppedAnimation<Color>(AppColor.greenColor),
        borderRadius: BorderRadius.circular(12),
        minHeight: 8,
      ),
      trailing: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(trailing,style: AppTextStyle.styleRegular13(context),)),
    );
  }
}