import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/drivers_widget/driver_setting_widget.dart';
import 'package:along/src/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverPlannerPage extends StatelessWidget {
  static const routhName = "/driver-planner-page";
  const DriverPlannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
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
                height: size.height * 0.27.h,
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
              top: 100.h, left: 25.w, child: const DriverSettingWidget()),
          Positioned(
              top: 311.h,
              left: 0.w,
              right: 0.w,
              child: Container(
                height: 501.w,
                width: 430.w,
                decoration: const BoxDecoration(color: Colors.white),
                child: Image.asset(
                  AlgAssets.googleMap,
                  // height: 501.w,
                  // width: 430.w,
                  fit: BoxFit.cover,
                ),
              )),
        ],
      ),
    );
  }
}
