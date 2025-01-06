import 'dart:convert';
import 'package:musicana/core/common/model/otp_response_model.dart';
import 'package:musicana/core/common/model/user_model.dart';
import 'package:musicana/core/common/widget/toast.dart';
import 'package:musicana/core/network/api.dart';
import 'package:musicana/core/network/api_call.dart';

class UserRepository {
  UserRepository();
  ApiCall api = ApiCall();

  Future<OtpResponse> sendOtp({required String phoneNumber}) async {
    try {
      final response = await api.postResponse(API.PhoneAuth, {'PhoneNo': phoneNumber});
      print('Response: ${response.body}');
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final otpResponse = OtpResponse.fromJson(responseData);

        print('Message: ${otpResponse.message}');
        print('User Account ID: ${otpResponse.userAccountId}');
        return otpResponse;
      } else {
        showToast(msg: response.body);
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final otpResponse = OtpResponse.fromJson(responseData);
        print('Failed to fetch data: ${response.statusCode}');
        return otpResponse;
      }
    } catch (e) {
      print('Error: $e');

      rethrow;
    }
  }

  Future<OtpResponse> verifyOtp({required String phoneNumber, required String otp}) async {
    try {
      final response = await api.getResponse(API.VerifyOtp, queryParameters: {"phone": phoneNumber, "otp": otp});
      print('Response: ${response.body}');
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final otpResponse = OtpResponse.fromJson(responseData);

        print('Message: ${otpResponse.message}');
        print('User Account ID: ${otpResponse.userAccountId}');
        return otpResponse;
      } else {
        showToast(msg: response.body);
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final otpResponse = OtpResponse.fromJson(responseData);
        print('Failed to fetch data: ${response.statusCode}');
        return otpResponse;
      }
    } catch (e) {
      print('Error: $e');

      rethrow;
    }
  }

  Future<UserModel> getUserById({required String userId}) async {
    try {
      final response = await api.getResponse(API.GetUserById, queryParameters: {"createdBy": userId});
      print('Response get by id: ${response.body}');
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final userResponse = UserModel.fromJson(responseData);

        print('first name ${userResponse.firstName}');
        print('last name ${userResponse.lastName}');
        return userResponse;
      } else {
        showToast(msg: response.body);
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final userResponse = UserModel.fromJson(responseData);
        print('Failed to fetch data: ${response.statusCode}');
        return userResponse;
      }
    } catch (e) {
      print('Error: $e');

      rethrow;
    }
  }
}
