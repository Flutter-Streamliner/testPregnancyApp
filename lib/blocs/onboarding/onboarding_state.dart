part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();
}

class AimState extends OnboardingState {

  const AimState();

  @override
  List<Object?> get props => [];

}

class BirthdayState extends OnboardingState {
  final AimType aimType;

  const BirthdayState({
    required this.aimType,
  });

  @override
  List<Object?> get props => [aimType];
}

class TotalState extends OnboardingState {
  final AimType aimType;
  final String year;

  const TotalState({
    required this.aimType,
    required this.year,
  });

  @override
  List<Object?> get props => [aimType, year];
}