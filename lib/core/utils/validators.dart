
/// Utility class for common validation functions.
class Validators {

  /// Checks if the given text is empty or null.
  static bool isEmpty(String? text) {
    return text == null || text.trim().isEmpty;
  }

  /// Validates if the provided email string has a valid format.
  static bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(email);
  }

  /// Validates if the provided password meets minimum criteria (e.g., 8 characters, at least one number).
  static bool isValidPassword(String password) {
    final passwordRegex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    return passwordRegex.hasMatch(password);
  }

  /// Validates if the provided username meets minimum criteria (e.g., only alphanumeric characters, 3-15 characters).
  static bool isValidName(String name) {
    final nameRegex = RegExp(r'^[a-zA-Z0-9]{3,15}$');
    return nameRegex.hasMatch(name);
  }

}
