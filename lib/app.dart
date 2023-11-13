import 'package:fitnessapp/blocs/onboarding/onboarding_bloc.dart';
import 'package:fitnessapp/pages/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FitnessApp extends StatelessWidget {
  const FitnessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<OnboardingBloc>(
        create: (ctx) => OnboardingBloc(),
        child: const OnboardingPage(),
      ),
    );
  }
}
