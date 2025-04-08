import 'dart:io';
import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/utils/extentions/on_context.dart';
import 'package:along/src/utils/validators.dart';
import 'package:along/src/views/registartion_sucess_dialog_page.dart';
import 'package:along/src/views/view_state/registration_state.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/custom_text_field.dart';
import 'package:along/src/widgets/selection_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pinput/pinput.dart';
import 'package:toastification/toastification.dart';

class RegistrationPage extends StatefulHookConsumerWidget {
  const RegistrationPage({super.key});

  static const routhName = "/registration";

  @override
  ConsumerState<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends ConsumerState<RegistrationPage>
    with Validators {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cardNoController = TextEditingController();
  TextEditingController cardExpiryController = TextEditingController();
  TextEditingController cardCVVController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final regProvider = ref.watch(registrationStateProvider);
    final size = MediaQuery.sizeOf(context);

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
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.3,
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      AlgAssets.yellowPattern,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: size.height * 0.12,
                      child: Container(
                        // color: Colors.red,
                        padding: Styles.padH30 + Styles.padH10,
                        width: size.width,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SelectionIndicator(
                                    isSelected: regProvider.currentPage == 0),
                                Styles.wGap10,
                                SelectionIndicator(
                                    isSelected: regProvider.currentPage == 1),
                                Styles.wGap10,
                                SelectionIndicator(
                                    isSelected: regProvider.currentPage == 2),
                                Styles.wGap10,
                                SelectionIndicator(
                                    isSelected: regProvider.currentPage == 3),
                              ],
                            ),
                            switch (regProvider.currentPage) {
                              0 => Text(
                                  "Account details",
                                  style: Styles.fontStyle28,
                                ),
                              1 => Text(
                                  "Profile picture",
                                  style: Styles.fontStyle28,
                                ),
                              2 => Text(
                                  "Add payment method",
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
                                  "Fill in some details about yourself to create your new account.",
                                  style: Styles.fontStyle16,
                                  textAlign: TextAlign.center,
                                ),
                              1 => Text(
                                  "Fill in some details about yourself to create your new account.",
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
                  padding: Styles.padH15 + Styles.padH10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Username"),
                      Styles.hGap10,
                      CustomTextField(
                        controller: usernameController,
                        validator: validateName,
                        hintText: "Username",
                        icon: const Icon(Icons.person_outline),
                      ),
                      Styles.hGap20,
                      const Text("Email"),
                      Styles.hGap10,
                      CustomTextField(
                        controller: emailController,
                        validator: validateEmail,
                        hintText: "Email",
                        icon: const Icon(Icons.email_outlined),
                      ),
                      Styles.hGap20,
                      const Text("Password"),
                      Styles.hGap10,
                      CustomTextField(
                        controller: passwordController,
                        validator: validateName,
                        hintText: "Password",
                        icon: const Icon(Icons.lock_outline),
                        suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                      Styles.hGap20,
                      const Text("Phone number"),
                      Styles.hGap10,
                      CustomTextField(
                        controller: phoneController,
                        validator: validatePhoneNumber,
                        hintText: "Phone number",
                        icon: const Icon(Icons.phone_iphone_outlined),
                      ),
                      Styles.hGap30,
                      Row(
                        children: [
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            value: true,
                            fillColor:
                                const WidgetStatePropertyAll(Colors.orange),
                            onChanged: ((value) {}),
                          ),
                          Styles.wGap10,
                          Text(
                            "I accept the Terms and the Privacy Policy",
                            style: Styles.fontStyle12,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),

              Visibility(
                visible: regProvider.currentPage == 1,
                child: Padding(
                  padding: Styles.padH15 + Styles.padH10,
                  child: Column(
                    children: [
                      Container(
                        height: 300.h,
                        width: 300.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Styles.primaryColor,
                          border: Border.all(
                            color: Styles.primaryColor,
                            width: 6,
                          ),
                        ),
                        child: Container(
                          margin: Styles.pad15,
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Styles.greyColor,
                            image: regProvider.photo != null
                                ? DecorationImage(
                                    image: FileImage(
                                        File(regProvider.photo!.path)),
                                    fit: BoxFit.cover,
                                  )
                                : null,
                          ),
                          child: regProvider.photo != null
                              ? null
                              : const Icon(
                                  Icons.image_outlined,
                                  color: Colors.black,
                                  size: 56,
                                ),
                        ),
                      ),
                      Styles.hGap30,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              final regProvider =
                                  ref.read(registrationStateProvider.notifier);
                              regProvider.pickImage(
                                (value) {
                                  context.showToast(
                                    title: "Successfully picked an image",
                                    showProgressBar: false,
                                    type: ToastificationType.success,
                                  );
                                },
                                (value) {
                                  context.showToast(
                                    title: value,
                                    showProgressBar: false,
                                    type: ToastificationType.success,
                                  );
                                },
                                ImageSource.camera,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Styles.btnBlack,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Styles.wGap20,
                          InkWell(
                            onTap: () {
                              final regProvider =
                                  ref.read(registrationStateProvider.notifier);
                              regProvider.pickImage(
                                (value) {
                                  context.showToast(
                                    title: "Successfully picked an image",
                                    showProgressBar: false,
                                    type: ToastificationType.success,
                                  );
                                },
                                (value) {
                                  context.showToast(
                                    title: value,
                                    showProgressBar: false,
                                    type: ToastificationType.success,
                                  );
                                },
                                ImageSource.gallery,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Styles.btnBlack),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Select Image",
                                  style: Styles.fontStyle14B,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: regProvider.currentPage == 2,
                child: Column(
                  children: [
                    const Divider(color: Styles.cEFEDED),
                    Padding(
                      padding: Styles.padH25 + Styles.padV10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.account_balance_outlined),
                          SizedBox(
                            width: 149.w,
                            height: 46.h,
                            child:
                                Button(text: "Bank Transfer", onPressed: () {}),
                          )
                        ],
                      ),
                    ),
                    const Divider(color: Styles.cEFEDED),
                    Styles.hGap20,
                    Padding(
                      padding: Styles.padH25,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(AlgAssets.paymentCard),
                      ),
                    ),
                    Styles.hGap20,
                    Padding(
                      padding: Styles.padH25,
                      child: CustomTextField(
                        controller: cardNoController,
                        hintText: "0000 0000 0000 0000",
                        suffixIcon: Container(
                          height: 24,
                          width: 24,
                          alignment: Alignment.center,
                          // color: Colors.red,
                          child: SvgPicture.asset(
                            height: 24,
                            width: 24,
                            fit: BoxFit.cover,
                            AlgAssets.atmCard,
                          ),
                        ),
                        validator: validateDebitCard,
                      ),
                    ),
                    Styles.hGap15,
                    Padding(
                      padding: Styles.padH15 + Styles.padH10,
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              controller: cardExpiryController,
                              validator: validateName,
                              hintText: "MM/YY",
                            ),
                          ),
                          Styles.wGap10,
                          Expanded(
                            child: CustomTextField(
                              controller: cardCVVController,
                              validator: validateName,
                              hintText: "XXX",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Styles.hGap15,
                    const Divider(color: Styles.cEFEDED),
                    Styles.hGap20,
                    Styles.hGap20,
                  ],
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
                            // validator: (value) {
                            //   return value == '2222'
                            //       ? null
                            //       : 'Pin is incorrect';
                            // },
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
                    Text(
                      "Haven't received your code?",
                      style: Styles.fontStyle14.copyWith(
                        color: Styles.c9D9D9D,
                      ),
                    ),
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
                      text: "Carry on",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          final regData = ref.read(registrationStateProvider);
                          final newData = regData.copyWith(
                            username: usernameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                            phoneNo: phoneController.text,
                          );

                          final regProvider =
                              ref.read(registrationStateProvider.notifier);
                          regProvider.updateState(newData);
                          regProvider.nextPage();
                        }
                      }),
                ),
              1 => Center(
                  child: SizedBox(
                    width: size.width,
                    height: 100,
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.42,
                          child: Button.outlined(
                            text: "Skip",
                            onPressed: () {
                              final regProvider =
                                  ref.read(registrationStateProvider.notifier);
                              regProvider.previousPage();
                            },
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: size.width * 0.42,
                          child: Button(
                            text: "Next",
                            onPressed: () {
                              final regProvider =
                                  ref.read(registrationStateProvider.notifier);
                              regProvider.nextPage();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              2 => Center(
                  child: Button(
                      isLoading: regProvider.isLoading,
                      text: "Next",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // final regProvider =
                          //     ref.read(registrationStateProvider.notifier);
                          // regProvider.nextPage();
                          final regData = ref.read(registrationStateProvider);
                          final newData = regData.copyWith(
                            cardNo: cardNoController.text,
                            cardCVV: cardCVVController.text,
                            cardExpiryNo: cardExpiryController.text,
                          );

                          final regProvider =
                              ref.read(registrationStateProvider.notifier);
                          regProvider.updateState(newData);
                          regProvider.registerPassanger((onSuccessful) {
                            context.showToast(
                              title: onSuccessful,
                              showProgressBar: false,
                              type: ToastificationType.success,
                            );
                          }, (err) {
                            context.showToast(
                              title: err,
                              showProgressBar: false,
                              type: ToastificationType.error,
                            );
                          });
                        }
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
