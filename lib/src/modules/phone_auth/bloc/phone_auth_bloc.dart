import 'dart:convert';

import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicana/core/common/model/otp_response_model.dart';
import 'package:musicana/core/utility/share_pref.dart';
import 'package:musicana/src/modules/phone_auth/bloc/phone_auth_ui_effect.dart';
import '../../../../core/common/model/user_model.dart';
import '../../../../core/network/repository/user_repository.dart';
import 'phone_auth_event.dart';
import 'phone_auth_state.dart';

class PhoneAuthBloc extends Bloc<PhoneAuthEvent, PhoneAuthState>
    with BlocPresentationMixin<PhoneAuthState, PhoneAuthUiEffect> {
  final TextEditingController phoneController = TextEditingController();
  UserRepository userRepository;

  PhoneAuthBloc({required this.userRepository}) : super(PhoneAuthState()) {
    on<MobileNumberChanged>(_onPhoneChanged);
    on<OtpChanged>(_onOtpChanged);
    on<TermsAndConditionsToggled>(_onTermAndConditionToggled);
    on<SendOtpPressed>(_onSendOtpPressed);
    on<VerifyOtp>(_onVerifyOtp);
  }

  void _onPhoneChanged(MobileNumberChanged event, Emitter<PhoneAuthState> emit) {
    final state = this.state;
    if (state is PhoneAuthState) {
      emit(state.copyWith(mobileNumber: event.mobileNumber, isSendingOtp: false));
    }
  }

  void _onOtpChanged(OtpChanged event, Emitter<PhoneAuthState> emit) {
    final state = this.state;
    if (state is PhoneAuthState) {
      emit(state.copyWith(otp: event.otp, isSendingOtp: false));
    }
  }

  void _onTermAndConditionToggled(TermsAndConditionsToggled event, Emitter<PhoneAuthState> emit) {
    emit(state.copyWith(isTermsAccepted: event.isAccepted, otpSent: false));
  }

  void _onSendOtpPressed(SendOtpPressed event, Emitter<PhoneAuthState> emit) async {
    if (state.mobileNumber.isEmpty || !state.isTermsAccepted) {
      emit(state.copyWith(errorMessage: 'Please complete the form'));
      return;
    }
    emit(state.copyWith(isSendingOtp: true, errorMessage: null));
    OtpResponse response = await userRepository.sendOtp(phoneNumber: state.mobileNumber);
    emit(state.copyWith(isSendingOtp: false));
    if (response.message != null) {
      emitPresentation(SentOTP(sentOtp: true, phoneNumber: state.mobileNumber));
    }
  }

  void _onVerifyOtp(VerifyOtp event, Emitter<PhoneAuthState> emit) async {
    print(state.otp);
    print(event.phoneNumber);
    emit(state.copyWith(isSendingOtp: true, errorMessage: null));
    OtpResponse response = await userRepository.verifyOtp(phoneNumber: event.phoneNumber.toString(), otp: state.otp);
    if (response.userAccountId != null) {
      // Save accountId in shared preferences
      await SharePreference.setUserId(response.userAccountId.toString());
      UserModel userModel = await userRepository.getUserById(userId: response.userAccountId.toString());
      if (userModel.firstName != "" ) {
        emit(state.copyWith(isSendingOtp: false, verified: true, register: false));
      } else {
        emit(state.copyWith(isSendingOtp: false, verified: true, register: true));
      }
    }
  }
}
