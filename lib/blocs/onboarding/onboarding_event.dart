part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();
}

class SelectAimEvent extends OnboardingEvent {
  final AimType type;

  const SelectAimEvent({required this.type});

  @override
  List<Object?> get props => [type];
}

class SelectBirthdayEvent extends OnboardingEvent {
  final String year;

  const SelectBirthdayEvent({required this.year});

  @override
  List<Object?> get props => [year];
}