class OtpResponse {
  final String? message;
  final String? userAccountId;
  final String? errorMessage;

  OtpResponse({
    this.message,
    this.userAccountId,
    this.errorMessage,
  });

  /// Create an instance from JSON
  OtpResponse.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        userAccountId = json['userAccountId'],
        errorMessage = json['errorMessage']; // Handles error messages from response

  /// Convert the instance back to JSON (optional)
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'userAccountId': userAccountId,
      'errorMessage': errorMessage,
    };
  }
}
