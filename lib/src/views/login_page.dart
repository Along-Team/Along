import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/utils/validators.dart';
import 'package:along/src/views/forget_password_page.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget with Validators {
  static const routhName = "/login";

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
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
                          Image.asset(AlgAssets.logo1),
                          Text(
                            "Welcome back",
                            style: Styles.fontStyle28,
                          ),
                          Styles.hGap10,
                          Text(
                            "Access your account",
                            style: Styles.fontStyle16,
                            textAlign: TextAlign.center,
                          ),
                          Styles.hGap10,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Styles.hGap30,
            Padding(
              padding: Styles.padH25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Username"),
                  Styles.hGap10,
                  CustomTextField(
                    controller: TextEditingController(),
                    validator: validateName,
                    hintText: "Username",
                    icon: const Icon(Icons.person_outline),
                  ),
                  Styles.hGap20,
                  const Text("Password"),
                  Styles.hGap10,
                  CustomTextField(
                    controller: TextEditingController(),
                    validator: validateName,
                    hintText: "Password",
                    icon: const Icon(Icons.lock_outline),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  ),
                  Styles.hGap20,
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: true,
                        fillColor: const WidgetStatePropertyAll(Colors.orange),
                        onChanged: ((value) {}),
                      ),
                      Text(
                        "Remeber me",
                        style: Styles.fontStyle14_400,
                      ),
                      const Spacer(),
                      Text(
                        "Forget your password?",
                        style: Styles.fontStyle14_400,
                      ),
                    ],
                  ),
                  Styles.hGap30,
                  Styles.hGap30,
                  Button(
                    text: "Log in",
                    onPressed: () {
                      //
                    },
                  ),
                  Styles.hGap10,
                  const Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: Styles.cEFEDED,
                      )),
                      Padding(
                          padding: Styles.padH10, child: Text("Or log in as")),
                      Expanded(
                        child: Divider(
                          color: Styles.cEFEDED,
                        ),
                      ),
                    ],
                  ),
                  Styles.hGap10,
                  // Styles.
                  Button.outlined(
                    text: "Along Driver",
                    textWidget: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(AlgAssets.bus),
                        Styles.wGap10,
                        Text(
                          "Along Driver",
                          style: Styles.fontStyle14B,
                        )
                      ],
                    ),
                    onPressed: () {
                      context.push(ForgetPasswordPage.routhName);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
