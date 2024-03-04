class Validator {
  String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your password';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lowercase letter';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }

    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }

    if (value.contains(RegExp(r'\s'))) {
      return 'Password must not contain whitespace';
    }
    if (value.length < 8) {
      return 'Your Password must contain at least 8 characters';
    }
    return null;
  }

  bool checkEmail({required String email}) {
    return (RegExp(r"^[^@\s]+@[^@\s]+\.[^@\s]+$").hasMatch(email));
  }

  String? validateEmail(String? email) {
    if (email == null || email.trim().isEmpty) {
      return 'Please enter your password';
    }
    if (checkEmail(email: email)) {
      return 'Please enter a valid email';
    } else {
      return null;
    }
  }

  String? validateGenericFields(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return "$fieldName cannot be empty";
    } else {
      return null;
    }
  }
}
