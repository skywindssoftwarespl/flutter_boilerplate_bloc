import 'package:equatable/equatable.dart';

abstract class PhoneAuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class MobileNumberChanged extends PhoneAuthEvent {
  final String mobileNumber;

  MobileNumberChanged(this.mobileNumber);

  @override
  List<Object?> get props => [mobileNumber];
}

class TermsAndConditionsToggled extends PhoneAuthEvent {
  final bool isAccepted;

  TermsAndConditionsToggled(this.isAccepted);

  @override
  List<Object?> get props => [isAccepted];
}

class SendOtpPressed extends PhoneAuthEvent {}

class VerifyOtp extends PhoneAuthEvent {
  String? phoneNumber;
  VerifyOtp({this.phoneNumber});
}

class OtpChanged extends PhoneAuthEvent {
  final String otp;

  OtpChanged(this.otp);

  @override
  List<Object?> get props => [otp];
}
