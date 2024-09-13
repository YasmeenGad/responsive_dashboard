import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/src/core/models/custom_today_model.dart';

class CustomTodayRow extends StatelessWidget {
  const CustomTodayRow({super.key, required this.customTodayModel});
  final CustomTodayModel customTodayModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
leading: SvgPicture.asset(customTodayModel.image,),
title: Text(customTodayModel.title),
subtitle: Text(customTodayModel.subtitle),
trailing: Text(customTodayModel.trailing),
    );
  }
}