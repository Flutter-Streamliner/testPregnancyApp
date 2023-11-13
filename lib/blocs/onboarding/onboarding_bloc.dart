import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:fitnessapp/consts/aim_type.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {

  AimType _aimType = AimType.trackMyPeriod;

  OnboardingBloc(): super(const AimState()) {
    on<SelectAimEvent>(_selectAim);
    on<SelectBirthdayEvent>(_selectBirthday);
  }



  FutureOr<void> _selectAim(SelectAimEvent event, Emitter<OnboardingState> emit) {
    _aimType = event.type;
    print('dbg: SelectAimEvent $_aimType');
    emit(BirthdayState(aimType: _aimType));
  }

  FutureOr<void> _selectBirthday(SelectBirthdayEvent event, Emitter<OnboardingState> emit) {
    emit(TotalState(aimType: _aimType, year: event.year));
  }
}