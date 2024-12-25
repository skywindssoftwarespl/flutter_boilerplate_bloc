import 'package:equatable/equatable.dart';

class PhoneAuthState extends Equatable {
  final String mobileNumber;
  final bool isTermsAccepted;
  final bool isSendingOtp;
  final String? errorMessage;

  PhoneAuthState({
    this.mobileNumber = '',
    this.isTermsAccepted = false,
    this.isSendingOtp = false,
    this.errorMessage,
  });

  PhoneAuthState copyWith({
    String? mobileNumber,
    bool? isTermsAccepted,
    bool? isSendingOtp,
    String? errorMessage,
  }) {
    return PhoneAuthState(
      mobileNumber: mobileNumber ?? this.mobileNumber,
      isTermsAccepted: isTermsAccepted ?? this.isTermsAccepted,
      isSendingOtp: isSendingOtp ?? this.isSendingOtp,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [mobileNumber, isTermsAccepted, isSendingOtp, errorMessage];
}
