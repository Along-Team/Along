import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/header.dart';
import 'package:along/src/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TripsTab extends StatelessWidget {
  const TripsTab({super.key});
  static const routhName = "/tripsTab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 347,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFCE48),
                  Color(0xFFFFDB7A),
                  Color(0xFFFFE9AD),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const Column(
              children: [
                Styles.hGap20,
                Header(
                  bgColor: Colors.transparent,
                  padding: Styles.padH20,
                ),
                Padding(
                  padding: Styles.padH25,
                  child: SearchBox(),
                ),
              ],
            ),
          ),
          Styles.hGap20,
          const Spacer(),
          Container(
            height: 249.h,
            width: double.infinity,
            color: Colors.cyanAccent,
            padding: Styles.pad20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Previous Routes", style: Styles.fontStyle24),
                Text(
                  "Bring back one of your previous strips",
                  style: Styles.fontStyle12,
                ),
                Styles.hGap20,
                Container(
                  height: 102.h,
                  width: 300.w,
                  padding: Styles.pad15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "14:05",
                                style: Styles.fontStyle16.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SvgPicture.asset(AlgAssets.line),
                              Text(
                                "14:05pm",
                                style: Styles.fontStyle16.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Styles.hGap2,
                          SizedBox(
                            // color: Colors.red,
                            width: 180,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Pick Up",
                                      style: Styles.fontStyle12.copyWith(
                                        color: Styles.c9D9D9D,
                                      ),
                                    ),
                                    Text(
                                      "Nathan Ogoh",
                                      style: Styles.fontStyle12.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "Bus Stop",
                                      style: Styles.fontStyle12.copyWith(
                                        color: Styles.c9D9D9D,
                                      ),
                                    ),
                                    Text(
                                      "Life Camp",
                                      style: Styles.fontStyle12.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Styles.wGap20,
                      Container(
                        height: 62.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: Styles.c1A1528,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
