import 'package:fitnessapp/blocs/onboarding/onboarding_bloc.dart';
import 'package:fitnessapp/consts/app_texts.dart';
import 'package:fitnessapp/pages/onboarding/aim/aim_page.dart';
import 'package:fitnessapp/pages/onboarding/birthday/birthday_page.dart';
import 'package:fitnessapp/pages/onboarding/total/total_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (ctx, state) {
        if (state is AimState) {
          return const AimPage();
        } else if (state is BirthdayState) {
          return BirthdayPage();
        } else if (state is TotalState) {
          return TotalPage(type: state.aimType.toString(), year: state.year);
        } else {
          return const Center(child: Text(AppTexts.somethingWentWrong));
        }
      });
  }
}
