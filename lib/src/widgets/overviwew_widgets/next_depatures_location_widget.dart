import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NextDepaturesLocationWidget extends StatelessWidget {
  const NextDepaturesLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 172.h,
        width: 382.w,
        decoration: BoxDecoration(
            color: Styles.c1A1528, borderRadius: BorderRadius.circular(28.r)),
        child: Stack(
          children: [
            Positioned(
                top: 40.h,
                left: 20.w,
                child: Column(
                  children: [
                    Container(
                      width: 15.w,
                      height: 15.w,
                      decoration: BoxDecoration(
                        color: Styles.c1F1F1F,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Styles.cFFFFFF,
                          width: 5.h,
                        ),
                      ),
                    ),
                    Styles.hGap10,
                    Image.asset(AlgAssets.dashedLine),
                    Styles.hGap5,
                    Container(
                      width: 15.w,
                      height: 15.w,
                      decoration: const BoxDecoration(
                        color: Colors.red, // Outermost layer (black)
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        margin: EdgeInsets.all(3.h), // Space for middle layer
                        decoration: const BoxDecoration(
                          color: Colors.black, // Middle layer (white)
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 6.w,
                          width: 6.w,
                          margin:
                              EdgeInsets.all(3.h), // Space for innermost layer
                          decoration: const BoxDecoration(
                            color: Colors.red, // Innermost layer (black)
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            Positioned(
              top: 30.h,
              left: 50.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Current Location",
                        style: Styles.fontStyle14.copyWith(
                            color: Styles.cFFFFFF, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Nathan Ogoh, Jabi Abuja",
                        style: Styles.fontStyle14.copyWith(
                            color: Styles.c9D9D9D, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 105.h,
              left: 50.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Destination",
                            style: Styles.fontStyle14.copyWith(
                                color: Styles.cFFFFFF,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Nile University, Lifecamp Roundabout",
                            style: Styles.fontStyle14.copyWith(
                                color: Styles.c9D9D9D,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 20.h,
              left: 320.w,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 40.w,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: Styles.cx4DF1F1F1,
                          borderRadius: BorderRadius.circular(16.r)),
                      child: Center(
                          child: SvgPicture.asset(
                        AlgAssets.cancelIcon,
                        // color: Styles.cFFFFFF,
                        height: 12.h,
                        width: 12.w,
                      ))),
                  Styles.hGap20,
                  Styles.hGap10,
                  Styles.hGap10,
                  Container(
                      height: 40.w,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: Styles.secondaryColor,
                          borderRadius: BorderRadius.circular(16.r)),
                      child: Center(
                          child: SvgPicture.asset(
                        AlgAssets.arrowUpDown,
                        // color: Styles.cFFFFFF,
                        height: 12.h,
                        width: 12.w,
                      )))
                ],
              ),
            )
          ],
        ));
  }
}
