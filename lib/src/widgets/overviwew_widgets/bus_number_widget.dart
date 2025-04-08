import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BusNumberWidget extends StatelessWidget {
  const BusNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.w,
      width: 382.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Styles.c1A1528,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Styles.hGap5,
          Row(
            children: [
              Styles.wGap10,
              Container(
                height: 72.w,
                width: 72.w,
                decoration: BoxDecoration(
                    color: Styles.secondaryColor,
                    borderRadius: BorderRadius.circular(24.r)),
                child: SvgPicture.asset(
                  AlgAssets.biggerBus,
                  height: 36.45.w,
                  width: 39.w,
                  fit: BoxFit.none,
                ),
              ),
              Styles.wGap20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "026",
                    style: Styles.fontStyle48.copyWith(color: Styles.cFFFFFF),
                  ),
                  Styles.hGap5,
                  Text(
                    "Bus",
                    style: Styles.fontStyle20.copyWith(color: Styles.cFFFFFF),
                  )
                ],
              ),
              Styles.wGap30,
              Styles.wGap30,
              Styles.wGap10,
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 60.h),
                child: Container(
                  height: 28.w,
                  width: 92.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xFFFFFFFF).withAlpha(0x33),
                  ),
                  child: Row(
                    children: [
                      Styles.wGap5,
                      Text(
                        "Verified",
                        style: Styles.fontStyle12.copyWith(
                            fontWeight: FontWeight.w500, color: Styles.cFFFFFF),
                      ),
                      Styles.wGap5,
                      Icon(
                        Icons.check,
                        color: Styles.cFFFFFF,
                        size: 20.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Styles.hGap15,
          Padding(
            padding: Styles.padH10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 28.w,
                  width: 92.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xFFFFFFFF).withAlpha(0x33),
                  ),
                  child: Row(
                    children: [
                      Styles.wGap5,
                      ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                            Styles.cFFFFFF, BlendMode.srcIn),
                        child: SvgPicture.asset(AlgAssets.bigBus),
                      ),
                      Styles.wGap5,
                      Text(
                        "Bus 025",
                        style: Styles.fontStyle12.copyWith(
                            fontWeight: FontWeight.w500, color: Styles.cFFFFFF),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 28.w,
                  width: 92.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xFFFFFFFF).withAlpha(0x33),
                  ),
                  child: Row(
                    children: [
                      Styles.wGap5,
                      Icon(
                        Icons.check,
                        color: Styles.cFFFFFF,
                        size: 20.sp,
                      ),
                      Styles.wGap5,
                      Text(
                        "Verified",
                        style: Styles.fontStyle12.copyWith(
                            fontWeight: FontWeight.w500, color: Styles.cFFFFFF),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 28.w,
                  width: 144.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color(0xFFFFFFFF).withAlpha(0x33),
                  ),
                  child: Row(
                    children: [
                      Styles.wGap5,
                      ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                            Styles.cFFFFFF, BlendMode.srcIn),
                        child: SvgPicture.asset(AlgAssets.ticket),
                      ),
                      Text(
                        "Tickets Purchased",
                        style: Styles.fontStyle12.copyWith(
                            fontWeight: FontWeight.w500, color: Styles.cFFFFFF),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
