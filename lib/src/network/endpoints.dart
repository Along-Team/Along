class Endpoints {
  Endpoints._();

  static const String baseUrl = 'https://myajor.com/api/v1';
  static const String login = '/auth/login';
  static const String loginWithUser = '/auth/login?with[]=user';
  static const String register = '/auth/register';
  static const String auth = '/auth/';
  static const String crudUser = '/users';
  static const String emailVerification = '/email_verifications';
  static const String forgetPassword = '/auth/forget-password';
}
