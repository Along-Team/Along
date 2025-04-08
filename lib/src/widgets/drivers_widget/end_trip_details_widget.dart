import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EndTripDetailsWidget extends StatelessWidget {
  const EndTripDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 351.w,
      width: 382.w,
      decoration: BoxDecoration(
        color: Styles.cF7F9FB,
        borderRadius: BorderRadius.circular(24.r),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Styles.hGap30,
/////   Component 1
          Padding(
            padding: Styles.padH15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total number of ",
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w500, color: Styles.c9E9E9E),
                    ),
                    Text(
                      "Tickets",
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w500, color: Styles.c9E9E9E),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "20 Tickets",
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w500, color: Styles.c1F1F1F),
                    ),
                    Text(
                      "₦49,000",
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Styles.secondaryColor),
                    )
                  ],
                ),
              ],
            ),
          ),

          Styles.hGap30,

          /////   Component 2
          Padding(
            padding: Styles.padH15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Routes ",
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w500, color: Styles.c9E9E9E),
                    ),
                    Text(
                      "Mapped",
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w500, color: Styles.c9E9E9E),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "20 Routes",
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w500, color: Styles.c1F1F1F),
                    ),
                    Text(
                      "150km",
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Styles.secondaryColor),
                    )
                  ],
                ),
              ],
            ),
          ),

          Styles.hGap30,

          /////   Component 3
          Padding(
            padding: Styles.padH15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mapping Bonus",
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w500, color: Styles.c9E9E9E),
                    ),
                    Text(
                      "Earned",
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w500, color: Styles.c9E9E9E),
                    )
                  ],
                ),
                Padding(
                  padding: Styles.padH15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "₦3,000",
                        style: Styles.fontStyle16.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Styles.secondaryColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          Styles.hGap30,

          ////4th component

          Padding(
            padding: Styles.padH10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Earned",
                  style: Styles.fontStyle16.copyWith(
                      fontWeight: FontWeight.w500, color: Styles.c9E9E9E),
                ),
                Padding(
                  padding: Styles.padH15,
                  child: Text(
                    "₦52,100",
                    style: Styles.fontStyle16.copyWith(
                        fontWeight: FontWeight.w500, color: Styles.c9E9E9E),
                  ),
                )
              ],
            ),
          )
        ],
      ),

      // child: ,
    );
  }
}
