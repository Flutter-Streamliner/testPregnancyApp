import 'package:fitnessapp/blocs/onboarding/onboarding_bloc.dart';
import 'package:fitnessapp/consts/app_styles.dart';
import 'package:fitnessapp/consts/app_texts.dart';
import 'package:fitnessapp/pages/onboarding/birthday/widgets/birthday_background_widget.dart';
import 'package:fitnessapp/pages/onboarding/birthday/widgets/custom_year_picker.dart';
import 'package:fitnessapp/pages/onboarding/birthday/widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BirthdayPage extends StatelessWidget {

  String _year = '2000';

  BirthdayPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BirthdayBackgroundWidget(
      button: NextButton(
        onPressed: () => context.read<OnboardingBloc>().add(SelectBirthdayEvent(year: _year)),
      ),
      child: Column(
        children: [
          const Text(
            AppTexts.loginYourBirthday,
            style: AppStyles.standartStyle,
          ),
          CustomYearPicker(
            onYearChanged: (year) {
              _year = year;
            },
          ),
        ],
      ),
    );
  }
}
