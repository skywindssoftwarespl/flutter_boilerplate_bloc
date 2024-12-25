import 'package:equatable/equatable.dart';

class PhoneAuthState extends Equatable {
  final String mobileNumber;
  final bool isTermsAccepted;
  final bool isSendingOtp;
  final bool otpSent;
  final bool verified;
  final String? errorMessage;

  PhoneAuthState({
    this.mobileNumber = '',
    this.isTermsAccepted = false,
    this.isSendingOtp = false,
    this.otpSent = false,
    this.verified = false,
    this.errorMessage,
  });

  PhoneAuthState copyWith({
    String? mobileNumber,
    bool? isTermsAccepted,
    bool? isSendingOtp,
    bool? otpSent,
    bool? verified,
    String? errorMessage,
  }) {
    return PhoneAuthState(
      mobileNumber: mobileNumber ?? this.mobileNumber,
      isTermsAccepted: isTermsAccepted ?? this.isTermsAccepted,
      isSendingOtp: isSendingOtp ?? this.isSendingOtp,
      otpSent: otpSent ?? this.otpSent,
      verified: verified ?? this.verified,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [mobileNumber, isTermsAccepted, isSendingOtp, errorMessage, otpSent, verified];
}
