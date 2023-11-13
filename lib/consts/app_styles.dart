import 'package:flutter/material.dart';
import 'package:fitnessapp/consts/app_colors.dart';

abstract class AppStyles {

  static const TextStyle titleStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 30,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle descriptionStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle standartStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 25,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle yearStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 40,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
}