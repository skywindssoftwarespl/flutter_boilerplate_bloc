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
