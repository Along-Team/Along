import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextDropOfPricefWidget extends StatelessWidget {
  final String priceText;
  final String timeText;
  final String nextStopText;
  final String status;

  const NextDropOfPricefWidget(
      {super.key,
      required this.priceText,
      required this.timeText,
      required this.nextStopText,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 72.w,
        width: 382.w,
        decoration: BoxDecoration(
          color: Styles.cFFFFFF,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Padding(
          padding: Styles.padH10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///first column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Styles.hGap10,
                  Text(
                    priceText,
                    style: Styles.fontStyle14.copyWith(
                      fontWeight: FontWeight.w800,
                      fontSize: 20.sp,
                      color: Styles.secondaryColor,
                    ),
                  ),
                  Text(
                    timeText,
                    style: Styles.fontStyle14B.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Styles.c404040,
                    ),
                  ),
                ],
              ),

              ///Second Column
              ///
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Styles.hGap10,
                  Text(
                    status,
                    style: Styles.fontStyle12.copyWith(color: Styles.c404040),
                  ),
                  Text(
                    nextStopText,
                    style: Styles.fontStyle20,
                    overflow: TextOverflow.ellipsis, // optional
                  ),
                ],
              ),

              ///Third Column
              ///
              Container(
                height: 32.w,
                width: 32.w,
                decoration: BoxDecoration(
                  color: Styles.cFAFAFA,
                  borderRadius: BorderRadius.circular(999.r),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 17.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
