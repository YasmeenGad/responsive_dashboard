import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/src/core/models/custom_today_model.dart';
import 'package:responsive_dashboard/src/core/utils/app_styles.dart';

class CustomTodayRow extends StatelessWidget {
  const CustomTodayRow({super.key, required this.customTodayModel});
  final CustomTodayModel customTodayModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        customTodayModel.image,
      ),
      title: Text(
        customTodayModel.title,
        style: AppTextStyle.styleMedium16(context),
      ),
      subtitle: Text(
        customTodayModel.subtitle,
        style: AppTextStyle.styleRegular14(context),
      ),
      trailing: Text(
        customTodayModel.trailing,
        style: AppTextStyle.styleSemiBold16(context),
      ),
    );
  }
}
