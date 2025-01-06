import 'package:equatable/equatable.dart';

class PhoneAuthState extends Equatable {
  final String mobileNumber;
  final String otp;
  final bool isTermsAccepted;
  final bool isSendingOtp;
  final bool otpSent;
  final bool verified;
  final bool register;
  final String? errorMessage;

  PhoneAuthState({
    this.mobileNumber = '',
    this.otp = '',
    this.isTermsAccepted = false,
    this.isSendingOtp = false,
    this.otpSent = false,
    this.verified = false,
    this.register = false,
    this.errorMessage,
  });

  PhoneAuthState copyWith({
    String? mobileNumber,
    String? otp,
    bool? isTermsAccepted,
    bool? isSendingOtp,
    bool? otpSent,
    bool? verified,
    bool? register,
    String? errorMessage,
  }) {
    return PhoneAuthState(
      mobileNumber: mobileNumber ?? this.mobileNumber,
      otp: otp ?? this.otp,
      isTermsAccepted: isTermsAccepted ?? this.isTermsAccepted,
      isSendingOtp: isSendingOtp ?? this.isSendingOtp,
      otpSent: otpSent ?? this.otpSent,
      verified: verified ?? this.verified,
      register: register ?? this.register,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props =>
      [mobileNumber, otp, isTermsAccepted, isSendingOtp, errorMessage, otpSent, verified, register];
}
