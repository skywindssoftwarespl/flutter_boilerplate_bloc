class API {
  static const BASE_URL = 'http://206.1.12.150:8002/api';

  // Authentication
  static const PhoneAuth = '$BASE_URL/UserAccount/Login';
  static const VerifyOtp = '$BASE_URL/UserAccount/VerifyLoginOTP';
  static const ProfileInfo = '$BASE_URL/ProfileInfo/ProfileInfo';
  static const GetUserById = '$BASE_URL/ProfileInfo/ProfileInfoById';
}
