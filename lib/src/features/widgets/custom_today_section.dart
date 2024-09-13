import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/models/custom_today_model.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_today_row.dart';

class CustomTodaySection extends StatelessWidget {
  const CustomTodaySection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CustomTodayModel> items = [
      CustomTodayModel(
          title: "Grocery",
          subtitle: "5:12 pm  •  Belanja di pasar",
          trailing: "-326.800",
          image: 'assets/images/grocery.svg'),
      CustomTodayModel(
          title: "Transportation",
          subtitle: "5:12 pm  •  Naik bus umum",
          trailing: "-15.000",
          image: 'assets/images/transportation.svg'),
      CustomTodayModel(
          title: "Housing",
          subtitle: "5:12 pm  •  Bayar Listrik",
          trailing: "-185.750",
          image: 'assets/images/housing.svg'),
    ];
    return SliverList.builder(
        itemBuilder: (context, index) {
          return CustomTodayRow(
            customTodayModel: items[index],
          );
        },
        itemCount: items.length);
  }
}
