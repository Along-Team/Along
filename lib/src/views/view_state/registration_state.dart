import 'package:along/src/network/http_service.dart';
import 'package:along/src/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'registration_state.g.dart';

class RegistrationViewState {
  final int currentPage;
  final bool isPassageForm;
  final String username;
  final String email;
  final String password;
  final String phoneNo;
  final String cardNo;
  final String cardExpiryNo;
  final String cardCVV;
  final XFile? photo;
  final bool isLoading;

  RegistrationViewState({
    required this.currentPage,
    required this.isPassageForm,
    required this.username,
    required this.email,
    required this.password,
    required this.phoneNo,
    required this.cardNo,
    required this.cardExpiryNo,
    required this.cardCVV,
    required this.photo,
    this.isLoading = false,
  });

  RegistrationViewState copyWith({
    int? currentPage,
    bool? isPassageForm,
    String? username,
    String? email,
    String? password,
    String? phoneNo,
    String? cardNo,
    String? cardExpiryNo,
    String? cardCVV,
    XFile? photo,
    bool? isLoading,
  }) {
    return RegistrationViewState(
      currentPage: currentPage ?? this.currentPage,
      isPassageForm: isPassageForm ?? this.isPassageForm,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      phoneNo: phoneNo ?? this.phoneNo,
      cardNo: cardNo ?? this.cardNo,
      cardExpiryNo: cardExpiryNo ?? this.cardExpiryNo,
      cardCVV: cardCVV ?? this.cardCVV,
      photo: photo ?? this.photo,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

@Riverpod(keepAlive: true)
class RegistrationState extends _$RegistrationState {
  @override
  RegistrationViewState build() {
    return RegistrationViewState(
      currentPage: 0,
      isPassageForm: true,
      username: '',
      email: '',
      password: '',
      phoneNo: '',
      cardNo: '',
      cardExpiryNo: '',
      cardCVV: '',
      photo: null,
      isLoading: false,
    );
  }

  void nextPage() {
    state = state.copyWith(currentPage: state.currentPage + 1);
  }

  void previousPage() {
    state = state.copyWith(currentPage: state.currentPage - 1);
  }

  Future<void> pickImage(
    ValueChanged<String> onSuccessful,
    ValueChanged<String> onError,
    ImageSource source,
  ) async {
    try {
      // FilePickerResult? result = await FilePicker.platform.pickFiles(
      //   type: FileType.image,
      // );
      final ImagePicker picker = ImagePicker();
      final XFile? result = await picker.pickImage(source: source);
      if (result != null) {
        final XFile file = XFile(result.path);
        state = state.copyWith(photo: file);
        onSuccessful('Image picked successfully');
      } else {
        // User canceled the picker
        onError('User canceled the picker');
      }
    } catch (e) {
      onError(e.toString());
    }
  }

  void updateState(RegistrationViewState newState) {
    state = newState;
  }

  //Todo: user registration

  Future<void> registerPassanger(
      ValueChanged<String> onSuccessful, ValueChanged<String> onError) async {
    state = state.copyWith(isLoading: true);
    try {
      final res = await ref.read(httpServiceProvider.notifier).networkCall(
            method: HttpMethod.post,
            endpoint: '/passenger/register',

            // reqBody: {
            //   'username': state.username,
            //   'email': state.email,
            //   'password': state.password,
            //   'phoneNo': state.phoneNo,
            //   'photo': await MultipartFile.fromFile(state.photo!.path),
            // },
            formData: FormData.fromMap(
              {
                'username': state.username,
                'email': state.email,
                'password': state.password,
                'phoneNo': state.phoneNo,
                'photo': await MultipartFile.fromFile(state.photo!.path),
              },
            ),
            useformData: true,
          );

      if (res.isSuccessful) {
        Utils.log.i('Passenger registered successfully');
        onSuccessful('Passenger registered successfully check for OTP');
        nextPage();
      } else {
        Utils.log.e(res.errorMessage!);
        onError(res.errorMessage!);
      }
    } catch (e) {
      Utils.log.e(e.toString());
      onError(e.toString());
    }
    state = state.copyWith(isLoading: false);
  }
}
