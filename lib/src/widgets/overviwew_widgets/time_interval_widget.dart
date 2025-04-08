import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeIntervalWidget extends StatelessWidget {
  const TimeIntervalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      height: 13.3.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Updated background line with two colors
          SizedBox(
            width: 53.w,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 4.h,
                    color: Styles.cFAFAFAdu,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            width: 367.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(2, (index) {
                return Container(
                  width: 15.w,
                  height: 300.w,
                  decoration: BoxDecoration(
                    color: Styles.cFFFFFF,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Styles.cE5F2FE,
                      width: 3.h,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
