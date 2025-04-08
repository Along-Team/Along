import 'package:along/src/style/style.dart';
import 'package:along/src/widgets/header.dart';
import 'package:along/src/widgets/overviwew_widgets/next_departures_buttomsheet.dart';
import 'package:along/src/widgets/overviwew_widgets/next_depatures_location_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextDepaturesPage extends StatelessWidget {
  static const routhName = "/next-depatures-page";

  const NextDepaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.cFFCE48,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(25.r))),
                child: const Header(
                  bgColor: Styles.cFFCE48,
                  padding: Styles.padH20,
                ),
              ),
              Container(
                height: size.height * 0.4.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Styles.cFFCE48,
                      Styles.cFFCE48,
                      Styles.cFFDB7A,
                      Styles.cFFE9AD,
                    ],
                  ),
                ),
                // child: Stack(
                //   children: [],
                // ),
              ),
            ],
          ),
          Positioned(
              top: 100.h,
              left: 25.w,
              child: const NextDepaturesLocationWidget()),
          Positioned(top: 350.h, child: const NextDeparturesButtomsheet())
        ],
      ),
    );
  }
}
