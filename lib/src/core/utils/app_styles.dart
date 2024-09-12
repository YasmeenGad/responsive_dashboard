import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dashboard/src/core/config/size_config.dart';
import 'package:responsive_dashboard/src/core/constants/colors.dart';

mixin Font implements FontWeight {
  static FontWeight get semiBold => FontWeight.w600;
  static FontWeight get regular => FontWeight.w400;
  static FontWeight get medium => FontWeight.w500;
}

abstract class AppTextStyle {
  static TextStyle styleSemiBold30(context) {
    return GoogleFonts.poppins(
      color: AppColor.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontWeight: Font.semiBold,
    );
  }

  static TextStyle styleRegular17(context) {
    return GoogleFonts.poppins(
      color: AppColor.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 17),
      fontWeight: Font.regular,
    );
  }

  static TextStyle styleSemiBold25(context) {
    return GoogleFonts.poppins(
      color: AppColor.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 25),
      fontWeight: Font.semiBold,
    );
  }

  static TextStyle styleSemiBold40(context) {
    return GoogleFonts.poppins(
      color: AppColor.whiteBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 40),
      fontWeight: Font.semiBold,
    );
  }

  static TextStyle styleRegular16(context) {
    return GoogleFonts.poppins(
      color: AppColor.primaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: Font.regular,
    );
  }

  static TextStyle styleMedium16(context) {
    return GoogleFonts.poppins(
      color: AppColor.darkBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: Font.medium,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return GoogleFonts.poppins(
      color: AppColor.darkBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: Font.semiBold,
    );
  }

  static TextStyle styleSemiBold13(context) {
    return GoogleFonts.poppins(
      color: AppColor.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: Font.semiBold,
    );
  }

  static TextStyle styleRegular14(context) {
    return GoogleFonts.poppins(
      color: AppColor.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: Font.regular,
    );
  }

  static TextStyle styleMedium13(context) {
    return GoogleFonts.poppins(
      color: AppColor.darkBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: Font.medium,
    );
  }

  static TextStyle styleRegular13(context) {
    return GoogleFonts.poppins(
      color: AppColor.darkBlueColor,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: Font.regular,
    );
  }

  static TextStyle styleRegular12(context) {
    return GoogleFonts.poppins(
      color: AppColor.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: Font.regular,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
