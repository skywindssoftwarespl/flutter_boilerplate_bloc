extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension PasswordValidator on String {
  bool isValidPassword() {
    return RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(this);
  }
}

extension PhoneNumberValidator on String {
  bool isValidPhoneNumber() {
    final RegExp phoneRegExp = RegExp(r'^(?:\(?\d{3}\)?[-.\s]?)(\d{3}[-.\s]?\d{4})$');
    return phoneRegExp.hasMatch(this) && replaceAll(RegExp(r'[^\d]'), '').length == 10;
  }
}

