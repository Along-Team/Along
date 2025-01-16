import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/views/login_page.dart';
import 'package:along/src/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegistartionSucessDialogPage extends StatelessWidget {
  const RegistartionSucessDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.cFFCE48,
      body: Padding(
        padding: Styles.padH25,
        child: Column(
          children: [
            const Spacer(),
            Image.asset(AlgAssets.logo1),
            Styles.hGap20,
            Text(
              "Welcome",
              style: Styles.fontStyle48,
            ),
            Styles.hGap15,
            Text(
              "We are now with you all the way, regardless of where you are going",
              style: Styles.fontStyle16,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Button(
                text: "Plan Your Journy",
                onPressed: () {
                  context.go(LoginPage.routhName);
                }),
            Styles.hGap30,
            Styles.hGap10,
          ],
        ),
      ),
    );
  }
}
