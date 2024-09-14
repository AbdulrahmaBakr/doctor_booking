import 'package:doctor_booking/core/app_consts/app_sizes.dart';
import 'package:doctor_booking/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: AppSizes.sp24,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
  static TextStyle font10Black400Weight = TextStyle(
    fontSize: AppSizes.sp10,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTextColor,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: AppSizes.sp42,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
  );

  static TextStyle font16BlueBold = TextStyle(
    fontSize: AppSizes.sp16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static TextStyle font16WhiteBold = TextStyle(
    fontSize: AppSizes.sp16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
