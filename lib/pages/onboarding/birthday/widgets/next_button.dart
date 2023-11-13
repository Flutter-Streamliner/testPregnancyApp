import 'package:fitnessapp/consts/app_colors.dart';
import 'package:fitnessapp/consts/app_images.dart';
import 'package:fitnessapp/consts/app_styles.dart';
import 'package:fitnessapp/consts/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NextButton extends StatelessWidget {
  final Function() onPressed;

  const NextButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 200,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.accentGradient1,
              AppColors.accentGradient2,
            ],
            begin: Alignment(0, -1),
            end: Alignment(0, 3),
          ),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox.shrink(),
              const Text(
                AppTexts.next,
                style: AppStyles.buttonTextStyle,
              ),
              SvgPicture.asset(AppImages.arrowWhite),
            ],
          ),
        ),
      ),
    );
  }
}
