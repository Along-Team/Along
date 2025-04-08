import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/drivers_widget/pickup_info_progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NextDepaturesCard extends StatelessWidget {
  const NextDepaturesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158.w,
      width: 382.w,
      decoration: BoxDecoration(
          color: Styles.cFFFFFF, borderRadius: BorderRadius.circular(24.r)),
      child: Column(
        children: [
          Padding(
            padding: Styles.padH20,
            child: Row(
              children: [
                Text(
                  "14:05",
                  style: Styles.fontStyle24.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Styles.wGap20,
                Styles.wGap20,
                Styles.wGap20,
                Styles.wGap20,
                Text(
                  "From",
                  style: Styles.fontStyle16.copyWith(
                      fontWeight: FontWeight.w400, color: Styles.c9D9D9D),
                )
              ],
            ),
          ),
          Styles.hGap20,
          Padding(
            padding: Styles.padH20,
            child: Row(
              children: [
                Text(
                  "23 min Bus 025",
                  style: Styles.fontStyle16.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Styles.c9D9D9D,
                  ),
                ),
                Styles.wGap30,
                Text(
                  "Jabi Bus Stop",
                  style: Styles.fontStyle16.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Styles.c1F1F1F,
                      fontSize: 18.sp),
                )
              ],
            ),
          ),
          Styles.hGap20,
          Padding(
            padding: Styles.padH20,
            child: Row(
              children: [
                const PickupInfoProgressWidget(),
                Styles.wGap20,
                Container(
                  height: 30.w,
                  width: 88.w,
                  decoration: BoxDecoration(
                      color: Styles.cFFCE48,
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Center(
                    child: Row(
                      children: [
                        SvgPicture.asset(AlgAssets.ticket),
                        Styles.wGap5,
                        Text(
                          "₦1,100",
                          style: Styles.fontStyle14,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
