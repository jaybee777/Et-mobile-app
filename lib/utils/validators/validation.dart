class EtValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required !';
    }

    //Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-\.]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required !';
    }

    //check for minimum password length
    if (value.length < 8) {
      return 'Password must be atleast 8 characters.';
    }

    //check for uppercase
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain atleast one uppercase letter';
    }

    //check for number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain atleast one number';
    }

    //check for special character
    if (!value.contains(RegExp(r'[!@#$%&()^{}|<>,.?":*]'))) {
      return 'Password must contain atleast one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phonenumber is required !';
    }

    //Regular Expression for phonenumber validation (assuming 11-digits nigerian number format)
    // if (value.length != 11) {
    //   return 'Invalid phoneNumber.';
    // }

    //alternative Regular Expression for phonenumber validation
    final phoneRegExp = RegExp(r'^\d{11}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phoneNumber format(11digits required)';
    }
    return null;
  }
}
