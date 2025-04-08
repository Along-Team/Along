import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverInformationWidget extends StatelessWidget {
  const DriverInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.w,
      width: 400.w,
      child: Column(
        children: [
          Text(
            "Driver Information",
            style: Styles.fontStyle16.copyWith(
              color: Styles.c9D9D9D,
              fontWeight: FontWeight.w400,
            ),
          ),
          Styles.hGap10,
          Padding(
            padding: Styles.padH20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Femi Olutande",
                      style: Styles.fontStyle24.copyWith(
                        color: Styles.c1A1528,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "4.3",
                          style: Styles.fontStyle20.copyWith(
                            fontWeight: FontWeight.w800,
                            color: Styles.c2A2537,
                          ),
                        ),
                        Styles.wGap5,
                        Image.asset(AlgAssets.partialStar),
                      ],
                    ),
                    Text(
                      "259 people rated",
                      style: Styles.fontStyle12.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Styles.c2A2537,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 63,
                  width: 63,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Styles.secondaryColor,
                      width: 4,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      AlgAssets.manImg,
                      fit: BoxFit.cover,
                      height: 63,
                      width: 63,
                    ),
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
