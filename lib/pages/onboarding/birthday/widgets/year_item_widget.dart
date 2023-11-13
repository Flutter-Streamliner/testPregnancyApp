import 'package:fitnessapp/consts/app_colors.dart';
import 'package:fitnessapp/consts/app_styles.dart';
import 'package:flutter/material.dart';

class YearItemWidget extends StatelessWidget {
  final String year;
  final bool isSelected;

  const YearItemWidget({
    Key? key,
    required this.year,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.yearSelectedBgColor : AppColors.transparent,
        borderRadius: isSelected ? BorderRadius.circular(16) : null,
      ),
      child: Center(
        child: Text(
          year,
          style: AppStyles.yearStyle,
        ),
      ),
    );
  }
}