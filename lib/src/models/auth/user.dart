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

class PassangerUser extends BaseUser {
  final String cardNumber;
  final String cvv;
  final String expiryDate;
  PassangerUser(
      {required super.email,
      required super.username,
      required super.password,
      required super.phoneNo,
      required super.photo, 
      required this.cardNumber,
      required this.cvv,
      required this.expiryDate
      });


  PassangerUser copyWith({
    String? email,
    String? username,
    String? password,
    String? phoneNo,
    Uint8List? photo,
    String? cardNumber,
    String? cvv,
    String? expiryDate,
  }) {
    return PassangerUser(
      email: email ?? this.email,
      username: username ?? this.username,
      password: password ?? this.password,
      phoneNo: phoneNo ?? this.phoneNo,
      photo: photo ?? this.photo,
      cardNumber: cardNumber ?? this.cardNumber,
      cvv: cvv ?? this.cvv,
      expiryDate: expiryDate ?? this.expiryDate,
    );
  }
}
