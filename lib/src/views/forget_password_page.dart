import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/utils/validators.dart';
import 'package:along/src/views/registartion_sucess_dialog_page.dart';
import 'package:along/src/views/view_state/registration_state.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pinput/pinput.dart';

class ForgetPasswordPage extends StatefulHookConsumerWidget {
  static const routhName = "/forget-password";

  const ForgetPasswordPage({super.key});

  @override
  ConsumerState<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends ConsumerState<ForgetPasswordPage>
    with Validators {
  static const Duration duration = Duration(milliseconds: 350);
  static const Curve curve = Curves.easeInCubic;
  bool isPhoneSelected = true;
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final regProvider = ref.watch(registrationStateProvider);

    const focusedBorderColor = Styles.secondaryColor;
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Styles.primaryColor;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.36,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    AlgAssets.yellowPattern,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: size.height * 0.14,
                    child: Container(
                      // color: Colors.red,
                      padding: Styles.padH30 + Styles.padH10,
                      width: size.width,
                      child: Column(
                        children: [
                          Image.asset(AlgAssets.logo1),
                          switch (regProvider.currentPage) {
                            0 => Text(
                                "Reset Password",
                                style: Styles.fontStyle28,
                              ),
                            1 => Text(
                                "Enter the security code",
                                style: Styles.fontStyle28,
                              ),
                            2 => Text(
                                "Create password",
                                style: Styles.fontStyle28,
                              ),
                            3 => Text(
                                "Enter the code",
                                style: Styles.fontStyle28,
                              ),
                            _ => Container(),
                          },
                          Styles.hGap10,
                          switch (regProvider.currentPage) {
                            0 => Text(
                                "Write the phone number which is associated with your account",
                                style: Styles.fontStyle16,
                                textAlign: TextAlign.center,
                              ),
                            1 => Text(
                                "We have sent a 5-digit Security Code belonging to the phone number +234 803 547 5569.",
                                style: Styles.fontStyle16,
                                textAlign: TextAlign.center,
                              ),
                            2 => Text(
                                "Connect your travel card or add yours debate/credit card.",
                                style: Styles.fontStyle16,
                                textAlign: TextAlign.center,
                              ),
                            3 => Text(
                                "We have sent you a confirmation code on the phone number +234 803 547 5569",
                                style: Styles.fontStyle16,
                                textAlign: TextAlign.center,
                              ),
                            _ => Container(),
                          },
                          Styles.hGap10,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Styles.hGap30,
            // Styles.hGap15,

            ///Body
            ///First page Form
            Visibility(
                visible: regProvider.currentPage == 0,
                child: Padding(
                  padding: Styles.padH25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isPhoneSelected = !isPhoneSelected;
                          });
                        },
                        child: Container(
                          height: 44,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Styles.cFAFAFAdu),
                          child: Stack(
                            children: [
                              AnimatedPositioned(
                                duration: duration,
                                curve: curve,
                                right: isPhoneSelected ? 0 : 186,
                                left: isPhoneSelected ? 186 : 0,
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      left: 3, top: 3.1, right: 3),
                                  height: 38,
                                  width: 186,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 40, right: 50),
                                alignment: Alignment.center,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Telephone"),
                                    Text("Email"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Styles.hGap30,
                      CustomTextField(
                        controller: TextEditingController(),
                        validator: isPhoneSelected
                            ? validatePhoneNumber
                            : validateEmail,
                        hintText: isPhoneSelected ? "Phone number" : "Email",
                        // icon: const Icon(Icons.person_outline),
                      ),
                    ],
                  ),
                )),

            Visibility(
              visible: regProvider.currentPage == 1,
              child: Padding(
                padding: Styles.padH15 + Styles.padH10,
                child: Column(
                  children: [
                    Directionality(
                      // Specify direction if desired
                      textDirection: TextDirection.ltr,
                      child: Pinput(
                        length: 5,
                        controller: pinController,
                        focusNode: focusNode,
                        defaultPinTheme: defaultPinTheme,
                        validator: (value) {
                          return value == '2222' ? null : 'Pin is incorrect';
                        },
                        hapticFeedbackType: HapticFeedbackType.lightImpact,
                        onCompleted: (pin) {
                          debugPrint('onCompleted: $pin');
                        },
                        onChanged: (value) {
                          debugPrint('onChanged: $value');
                        },
                        cursor: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 9),
                              width: 22,
                              height: 1,
                              color: focusedBorderColor,
                            ),
                          ],
                        ),
                        focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: focusedBorderColor),
                          ),
                        ),
                        submittedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            color: fillColor,
                            borderRadius: BorderRadius.circular(19),
                            border: Border.all(color: focusedBorderColor),
                          ),
                        ),
                        errorPinTheme: defaultPinTheme.copyBorderWith(
                          border: Border.all(color: Colors.redAccent),
                        ),
                      ),
                    ),
                    Styles.hGap20,
                    Text("Haven't received your code?",
                        style: Styles.fontStyle14.copyWith(
                          color: Styles.c9D9D9D,
                        )),
                    Styles.hGap20,
                    Text("Send the code again", style: Styles.fontStyle14B),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: regProvider.currentPage == 2,
              child: Padding(
                padding: Styles.padH15 + Styles.padH10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Styles.hGap20,
                    const Text("New Password"),
                    Styles.hGap10,
                    CustomTextField(
                      controller: TextEditingController(),
                      validator: validateName,
                      hintText: "Password",
                      icon: const Icon(Icons.lock_outline),
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                    Styles.hGap10,
                    Text(
                      "Minimum 8 characters, with a combination of upper and lower case letters, characters and numbers.",
                      style: Styles.fontStyle12.copyWith(
                        color: Styles.c9D9D9D,
                      ),
                    ),
                    Styles.hGap20,
                    const Text("Verify Password"),
                    Styles.hGap10,
                    CustomTextField(
                      controller: TextEditingController(),
                      validator: validateName,
                      hintText: "Password",
                      icon: const Icon(Icons.lock_outline),
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                    Styles.hGap20,
                  ],
                ),
              ),
            ),
            Visibility(
              visible: regProvider.currentPage == 3,
              child: Column(
                children: [
                  Column(
                    children: [
                      Directionality(
                        // Specify direction if desired
                        textDirection: TextDirection.ltr,
                        child: Pinput(
                          controller: pinController,
                          focusNode: focusNode,
                          defaultPinTheme: defaultPinTheme,
                          validator: (value) {
                            return value == '2222' ? null : 'Pin is incorrect';
                          },
                          hapticFeedbackType: HapticFeedbackType.lightImpact,
                          onCompleted: (pin) {
                            debugPrint('onCompleted: $pin');
                          },
                          onChanged: (value) {
                            debugPrint('onChanged: $value');
                          },
                          cursor: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 9),
                                width: 22,
                                height: 1,
                                color: focusedBorderColor,
                              ),
                            ],
                          ),
                          focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: focusedBorderColor),
                            ),
                          ),
                          submittedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              color: fillColor,
                              borderRadius: BorderRadius.circular(19),
                              border: Border.all(color: focusedBorderColor),
                            ),
                          ),
                          errorPinTheme: defaultPinTheme.copyBorderWith(
                            border: Border.all(color: Colors.redAccent),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Styles.hGap20,
                  Text("Haven't received your code?",
                      style: Styles.fontStyle14.copyWith(
                        color: Styles.c9D9D9D,
                      )),
                  Styles.hGap20,
                  Text("Send the code again", style: Styles.fontStyle14B),
                ],
              ),
            ),

            // const Spacer(),
            Styles.hGap30,
            Styles.hGap30,

            ///Footer
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: double.infinity,
        height: size.height * 0.135,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              spreadRadius: 8,
              color: Colors.grey.shade100,
            )
          ],
        ),
        child: Padding(
            padding: Styles.padH20,
            child: switch (regProvider.currentPage) {
              0 => Center(
                  child: Button(
                      text: "Send the security code",
                      onPressed: () {
                        final regProvider =
                            ref.read(registrationStateProvider.notifier);
                        regProvider.nextPage();
                      }),
                ),
              1 => Center(
                  child: Button(
                    text: "Verify Code",
                    onPressed: () {
                      final regProvider =
                          ref.read(registrationStateProvider.notifier);
                      regProvider.nextPage();
                    },
                  ),
                ),
              2 => Center(
                  child: Button(
                      text: "Confrim New Password",
                      onPressed: () {
                        final regProvider =
                            ref.read(registrationStateProvider.notifier);
                        regProvider.nextPage();
                      }),
                ),
              3 => Center(
                  child: Button(
                    text: "Verify Account",
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const RegistartionSucessDialogPage();
                        },
                      );
                      // final regProvider =
                      //     ref.read(registrationStateProvider.notifier);
                      // regProvider.previousPage();
                    },
                  ),
                ),
              _ => Container(),
            }),
      ),
    );
  }
}
