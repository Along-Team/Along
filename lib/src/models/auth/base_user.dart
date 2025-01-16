import 'dart:typed_data';

class BaseUser {
  final String email;
  final String username;
  final String password;
  final String phoneNo;
  final Uint8List? photo;

  BaseUser({
    required this.email,
    required this.username,
    required this.password,
    required this.phoneNo,
    required this.photo,
  });
}
