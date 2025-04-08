mixin Validators {
  String? validateName(String? text) {
    if (text == null || text.isEmpty) {
      return "Please fill in the field";
    }
    if (text.length < 3) {
      return "Too short";
    }
    return null;
  }

  String? validateEmail(String? value) {
    // Regular expression for validating an email address
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
    RegExp regex = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!regex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null; // Return null if the email is valid
  }

  String? validatePhoneNumber(String? value) {
    // Regular expression for validating a phone number
    String pattern = r'^\+?[0-9]{7,15}$';
    RegExp regex = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    } else if (!regex.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }

    return null; // Return null if the phone number is valid
  }

  String? validateDebitCard(String? value) {
    // Regular expression for validating a debit card number
    String pattern = r'^[0-9]{16}$';
    RegExp regex = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return 'Please enter your debit card number';
    } else if (!regex.hasMatch(value)) {
      return 'Please enter a valid debit card number';
    }
    return null;
  }
}
