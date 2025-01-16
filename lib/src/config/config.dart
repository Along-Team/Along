class Config {
  static const String _productionBaseUrl = "https://project-along.onrender.com/api/v1/";
  static const String _stagingBaseUrl = "https://project-along.onrender.com/api/v1/";
  static const bool isStaging = true;
  static String get baseUrl => isStaging ? _stagingBaseUrl : _productionBaseUrl;
  static const appName = "Along";
  static const verificationPageType = "verificationPageType";
  static const emailKey = "email";
  static const newPasswordKey = "newPassword";
}
