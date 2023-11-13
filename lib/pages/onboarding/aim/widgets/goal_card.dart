import 'package:fitnessapp/consts/app_colors.dart';
import 'package:fitnessapp/consts/app_images.dart';
import 'package:fitnessapp/consts/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoalCard extends StatelessWidget {
  final String title;
  final String description;
  final Function() onPressed;

  const GoalCard({
    Key? key,
    required this.title,
    required this.description,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 130,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.goalCardBgColor,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: AppStyles.titleStyle,
                ),
                Text(
                  description,
                  style: AppStyles.descriptionStyle,
                ),
              ],
            ),
            SizedBox(
              height: 28,
              width: 30,
              child: SvgPicture.asset(AppImages.arrow),
            ),
          ],
        ),
      ),
    );
  }
}
