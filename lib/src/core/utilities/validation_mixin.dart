import 'package:flutter/material.dart';

extension ValidationExtension on BuildContext {
  String? validateFieldNotEmpty(String? value) =>
      value == null || value.isEmpty ? 'Field cannot be empty' : null;

  String? validateNumber(int? value) =>
      value == null || value.isNaN ? 'Enter a valid amount' : null;

  String? validateFieldNotNull<T>(T? value) =>
      value == null ? 'Field cannot be empty' : null;

  String? validateFullName<T>(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';

    if (value.split(' ').length < 2) return 'Please enter your FULL NAME';
    return null;
  }

  String? validateDropDown(var value) =>
      value == null || value.isEmpty ? 'Select an option' : null;

  String? validateEmailAddress(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';

    bool emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    return !emailValid ? 'Enter a Valid Email Address' : null;
  }

  String? validateEmailAndPhone(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';
    var mailFormat = RegExp(
        r"^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})|([0-9]{10})+$")
        .hasMatch(value);

    if (!mailFormat) {
      return "  Email Address / Phone number is not valid, Please provide a valid Email or phone number ";
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    if (value == null || value.length < 8)
      return 'Password must have 8 or more characters';
    bool passValid = RegExp(
        r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$")
        .hasMatch(value);
    return !passValid
        ? "at least one uppercase letter, one lowercase letter, one number and one special character"
        : null;
  }

  String? validateConfirmPassword(String value, String confirm) =>
      value != confirm || value.length < 6
          ? 'Password must have 6 or more characters'
          : null;

  String? validatePhoneNumber(String? value) =>
      value == null || value.length < 11 ? 'Enter a valid Phone Number' : null;
}
