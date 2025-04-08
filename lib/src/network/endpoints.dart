class Endpoints {
  Endpoints._();

  static const String baseUrl = 'https://project-along.onrender.com/api/v1';
  // All other routh paths are relative to this base URL and are written where they are consumed .
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String forgotPassword = '/auth/forgot-password';
}
