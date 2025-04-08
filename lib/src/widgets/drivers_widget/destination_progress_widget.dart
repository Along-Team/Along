import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DestinationProgressWidget extends StatelessWidget {
  const DestinationProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 367.w,
      height: 13.3.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 367.w,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 4.h,
                    color: Styles.secondaryColor,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 4.h,
                    color: Styles.c1A1528,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 367.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(7, (index) {
                return Container(
                  width: 10.w,
                  height: 10.w,
                  decoration: BoxDecoration(
                    color: index >= 2 ? Styles.cFFFFFF : Styles.cFFFFFF,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: index < 3 ? Styles.secondaryColor : Styles.c1A1528,
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
