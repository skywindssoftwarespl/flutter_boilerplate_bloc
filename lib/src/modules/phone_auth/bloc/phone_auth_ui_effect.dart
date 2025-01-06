sealed class PhoneAuthUiEffect {}

class SentOTP extends PhoneAuthUiEffect {
  bool? sentOtp;
  bool? verified;
  String? phoneNumber;
  SentOTP({this.sentOtp, this.verified, this.phoneNumber});
}
