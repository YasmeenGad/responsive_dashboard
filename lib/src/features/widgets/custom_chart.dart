import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomChart extends StatelessWidget {
  const CustomChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset("assets/images/Stats.svg"),
    );
  }
}