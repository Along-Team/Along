import 'package:along/src/style/style.dart';
import 'package:along/src/widgets/drivers_widget/pickup_info_progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickupInfoOverlayportal extends StatelessWidget {
  const PickupInfoOverlayportal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158.w,
      width: 382.w,
      decoration: BoxDecoration(
        color: Styles.cFFFFFF,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: Styles.padH10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1 Adult",
                  style: Styles.fontStyle24.copyWith(
                      color: Styles.c1F1F1F, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Destination",
                  style: Styles.fontStyle16.copyWith(
                      color: Styles.c9D9D9D, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: Styles.padH10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Status: Waiting",
                  style: Styles.fontStyle24.copyWith(
                      color: Styles.c9D9D9D, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Jabi Bus Stop",
                  style: Styles.fontStyle16.copyWith(
                      color: Styles.c1F1F1F,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp),
                ),
              ],
            ),
          ),
          Styles.hGap30,
          const Center(child: PickupInfoProgressWidget())
        ],
      ),
    );
  }
}
