import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'phone_auth_event.dart';
import 'phone_auth_state.dart';

class PhoneAuthBloc extends Bloc<PhoneAuthEvent, PhoneAuthState> {
  final TextEditingController phoneController = TextEditingController();

  PhoneAuthBloc() : super(PhoneAuthState()) {
    on<MobileNumberChanged>((event, emit) {
      emit(state.copyWith(mobileNumber: event.mobileNumber));
    });

    on<TermsAndConditionsToggled>((event, emit) {
      emit(state.copyWith(isTermsAccepted: event.isAccepted));
    });

    on<SendOtpPressed>((event, emit) async {
      if (state.mobileNumber.isEmpty || !state.isTermsAccepted) {
        emit(state.copyWith(errorMessage: 'Please complete the form'));
        return;
      }

      emit(state.copyWith(isSendingOtp: true, errorMessage: null));

      // Simulate OTP API call
      await Future.delayed(const Duration(seconds: 2));

      emit(state.copyWith(isSendingOtp: false, otpSent: true));
      // Navigate to OTP verification screen here.
    });

    on<VerifyOtp>((event, emit) async {
      emit(state.copyWith(isSendingOtp: true, errorMessage: null));

      // Simulate OTP API call
      await Future.delayed(const Duration(seconds: 2));

      emit(state.copyWith(isSendingOtp: false, otpSent: true, verified: true));
      // Navigate to OTP verification screen here.
    });
  }
}
