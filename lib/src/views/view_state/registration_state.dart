import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'registration_state.g.dart';

class RegistrationViewState {
  final int currentPage;
  final bool isPassageForm;
  final String username;
  final String password;
  final String phoneNo;

  RegistrationViewState({
    required this.currentPage,
    required this.isPassageForm,
    required this.username,
    required this.password,
    required this.phoneNo,
  });

  RegistrationViewState copyWith({
    int? currentPage,
    bool? isPassageForm,
    String? username,
    String? password,
    String? phoneNo,
  }) {
    return RegistrationViewState(
      currentPage: currentPage ?? this.currentPage,
      isPassageForm: isPassageForm ?? this.isPassageForm,
      username: username ?? this.username,
      password: password ?? this.password,
      phoneNo: phoneNo ?? this.phoneNo,
    );
  }
}

@riverpod
class RegistrationState extends _$RegistrationState {
  @override
  RegistrationViewState build() {
    return RegistrationViewState(
      currentPage: 0,
      isPassageForm: true,
      username: '',
      password: '',
      phoneNo: '',
    );
  }

  void nextPage() {
    state = state.copyWith(currentPage: state.currentPage + 1);
  }

  void previousPage() {
    state = state.copyWith(currentPage: state.currentPage - 1);
  }
}
