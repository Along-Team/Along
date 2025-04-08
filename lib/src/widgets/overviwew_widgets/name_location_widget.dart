import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NameLocationWidget extends StatelessWidget {
  const NameLocationWidget({super.key});

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
                    ),
                  ],
                )),
            Positioned(
              top: 30.h,
              left: 50.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AlgAssets.targetLocation),
                      Text(
                        "Nathan Ogoh, Gwarimpa",
                        style:
                            Styles.fontStyle16.copyWith(color: Styles.cFFFFFF),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 90.h,
              left: 35.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_pin,
                          color: Styles.cFFFFFF,
                          size: 25.sp,
                        ),
                      ),
                      Text(
                        "Where are you going ?",
                        style:
                            Styles.fontStyle16.copyWith(color: Styles.cFFFFFF),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 25.h,
              left: 310.w,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel_outlined)),
                  Styles.hGap20,
                  Styles.hGap2,
                  SvgPicture.asset(AlgAssets.arrowUpDown),
                ],
              ),
            )
          ],
        ));
  }
}
