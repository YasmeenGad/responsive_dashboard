import 'package:flutter/material.dart';
import 'package:responsive_dashboard/src/core/models/custom_today_model.dart';
import 'package:responsive_dashboard/src/features/widgets/custom_today_row.dart';

class CustomMondaySection extends StatelessWidget {
  const CustomMondaySection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CustomTodayModel> items = [
      CustomTodayModel(
          title: "Food and Drink",
          subtitle: "5:12 pm  •  Makan Steak",
          trailing: "-156.000",
          image: 'assets/images/food.svg'),
      CustomTodayModel(
          title: "Entertainment",
          subtitle: "5:12 pm  •  Nonton Bioskop",
          trailing: "-35.200",
          image: 'assets/images/entertaiment.svg'),
      
    ];
    return SliverList.builder(
      itemBuilder: (context, index) {
        return CustomTodayRow(
          customTodayModel: items[index],
        );
      },
      itemCount: items.length,
    );
  }
}
