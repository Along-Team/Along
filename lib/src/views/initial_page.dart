import 'package:along/src/utils/assets.dart';
import 'package:along/src/style/style.dart';
import 'package:along/src/views/login_page.dart';
import 'package:along/src/views/registration_page.dart';
import 'package:along/src/views/trips_pages/trips_tab.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/button2.dart';
import 'package:along/src/widgets/user_type_options_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitialPage extends StatelessWidget {
  static const routhName = '/';
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              height: size.height * 0.52,
              width: size.width,
              child: Image.asset(
                AlgAssets.halfMap,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.42,
            child: Container(
              width: size.width,
              padding: Styles.padH30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AlgAssets.smallLogo),
                  Styles.hGap10,
                  Text(
                    "Plan your next trip",
                    style: Styles.fontStyle48,
                  ),
                  Styles.hGap20,
                  Text(
                    "Hop On Board the Future of Public Transit - Your Smart Ride Starts Here",
                    style: Styles.fontStyle16,
                    // style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Styles.hGap20,
                  Styles.hGap10,
                  Button(
                    text: "Log in",
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return UserTypeOptionsSheet(
                            passengerWidget: Button2(
                              onPressed: () {
                                context.push(
                                  LoginPage.routhName,
                                );
                              },
                              text: "As Passenger ",
                            ),
                            driverWidget: Button2(
                              onPressed: () {},
                              text: "As Driver",
                              textColor: Styles.primaryColor,
                            ),
                          );
                        },
                      );
                    },
                  ),
                  Styles.hGap15,
                  Button(
                      text: "Create Account",
                      btnColor: Styles.secondaryColor,
                      textColor: Styles.btnBlack,
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return UserTypeOptionsSheet(
                              passengerWidget: Button2(
                                onPressed: () {
                                  context.push(RegistrationPage.routhName);
                                },
                                text: "As Passenger",
                              ),
                              driverWidget: Button2(
                                onPressed: () {},
                                text: "As Driver",
                                textColor: Styles.primaryColor,
                              ),
                            );
                          },
                        );
                      }),
                  Styles.hGap15,
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        context.pushNamed(TripsTab.routhName);
                      },
                      child: Text(
                        "Continue Without Account",
                        style: Styles.fontStyle14B.copyWith(
                          color: Styles.c795000,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
