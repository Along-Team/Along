extension StringExtension on String {
  String toCapitalCase() {
    return split('_')
        .map((word) => word.isEmpty 
            ? '' 
            : '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}')
        .join(' ');
  }

  String maskEmail() {
    if (!contains('@')) return this;

    final parts = split('@');
    if (parts.length != 2) return this;

    final localPart = parts[0];
    final domain = parts[1];

    // If local part is too short (3 or fewer characters)
    if (localPart.length <= 3) {
      return '***@$domain';
    }

    // Show first 3 characters and mask the rest
    final visiblePart = localPart.substring(0, 3);
    final maskedPart = '*' * (localPart.length - 3);
    
    return '$visiblePart$maskedPart@$domain';
  }

  // Alternative version that shows first and last character
  String maskEmailAlt() {
    if (!contains('@')) return this;

    final parts = split('@');
    if (parts.length != 2) return this;

    final localPart = parts[0];
    final domain = parts[1];

    // If local part is too short (2 or fewer characters)
    if (localPart.length <= 2) {
      return '***@$domain';
    }

    final firstChar = localPart[0];
    final lastChar = localPart[localPart.length - 1];
    final maskedPart = '*' * (localPart.length - 2);
    
    return '$firstChar$maskedPart$lastChar@$domain';
  }

  // Version with configurable visible characters
  String maskEmailCustom({
    int visibleStartChars = 3,
    int visibleEndChars = 0,
  }) {
    if (!contains('@')) return this;

    final parts = split('@');
    if (parts.length != 2) return this;

    final localPart = parts[0];
    final domain = parts[1];

    // Handle cases where the email is too short
    if (localPart.length <= visibleStartChars + visibleEndChars) {
      return '***@$domain';
    }

    final startPart = visibleStartChars > 0 
        ? localPart.substring(0, visibleStartChars) 
        : '';
        
    final endPart = visibleEndChars > 0 
        ? localPart.substring(localPart.length - visibleEndChars) 
        : '';
        
    final maskedLength = localPart.length - visibleStartChars - visibleEndChars;
    final maskedPart = '*' * maskedLength;

    return '$startPart$maskedPart$endPart@$domain';
  }
}