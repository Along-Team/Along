import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/views/driver_pages/progress_bar_bottom_sheet.dart';
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
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              top: 340.h,
              left: 30.w,
              right: 30.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    child: Container(
                      height: 50.w,
                      width: 50.w,
                      decoration: BoxDecoration(
                          color: Styles.cFFFFFF,
                          borderRadius: BorderRadius.circular(100.r)),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            OverlayEntry? overlayEntry;

                            overlayEntry = OverlayEntry(
                              builder: (context) {
                                return SizedBox.expand(
                                  child: Stack(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          overlayEntry?.remove();
                                        },
                                        child: Container(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      const Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Material(
                                          color: Colors.white,
                                          child: ProgressBarBottomSheetWidget(),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );

                            Overlay.of(context).insert(overlayEntry);
                          },
                          icon: const Icon(Icons.cancel_outlined),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    child: Container(
                      height: 50.w,
                      width: 50.w,
                      decoration: BoxDecoration(
                          color: Styles.primaryColor,
                          borderRadius: BorderRadius.circular(100.r)),
                      child: IconButton(
                          onPressed: () {
                            ///Navigator.pop()
                          },
                          icon: const Center(child: Icon(Icons.info_outline))),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
