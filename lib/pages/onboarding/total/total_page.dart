import 'package:fitnessapp/consts/app_styles.dart';
import 'package:fitnessapp/consts/app_texts.dart';
import 'package:fitnessapp/pages/onboarding/total/widgets/total_background_widget.dart';
import 'package:flutter/material.dart';

class TotalPage extends StatelessWidget {
  final String type;
  final String year;

  const TotalPage({
    Key? key,
    required this.type,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TotalBackgroundWidget(
      child: Column(
        children: [
          const Text(
            AppTexts.totalPageTitle,
            style: AppStyles.titleStyle,
          ),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: AppTexts.typeText,
                  style: AppStyles.standartStyle,
                ),
                const TextSpan(text: ' '),
                TextSpan(
                  text: type,
                  style: AppStyles.descriptionStyle,
                ),
              ]
            ),
          ),
          const SizedBox(height: 50),
          Text.rich(
            TextSpan(
                children: [
                  const TextSpan(
                    text: AppTexts.yearText,
                    style: AppStyles.standartStyle,
                  ),
                  const TextSpan(text: ' '),
                  TextSpan(
                    text: year,
                    style: AppStyles.descriptionStyle,
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
