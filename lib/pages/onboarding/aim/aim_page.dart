import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fitnessapp/blocs/onboarding/onboarding_bloc.dart';
import 'package:fitnessapp/consts/aim_type.dart';
import 'package:fitnessapp/consts/app_texts.dart';
import 'package:fitnessapp/pages/onboarding/aim/widgets/aim_background_widget.dart';
import 'package:fitnessapp/pages/onboarding/aim/widgets/goal_card.dart';



class AimPage extends StatelessWidget {
  const AimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AimBackgroundWidget(
      child: Column(
        children: [
          GoalCard(
            title: AppTexts.trackMyPeriod,
            description: AppTexts.contraceptionAndWellbeing,
            onPressed: () => _selectAim(context: context, type: AimType.trackMyPeriod),
          ),
          const SizedBox(height: 24),
          GoalCard(
            title: AppTexts.getPregnant,
            description: AppTexts.learnAbout,
            onPressed: () => _selectAim(context: context, type: AimType.getPregnant),
          ),
        ],
      ),
    );
  }

  void _selectAim({required BuildContext context, required AimType type}) =>
    context.read<OnboardingBloc>().add(SelectAimEvent(type: type));
}
