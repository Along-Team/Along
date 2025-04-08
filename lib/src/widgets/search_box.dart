import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 246.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Styles.c1A1528,
        borderRadius: BorderRadius.circular(28.h),
      ),
      child: Column(
        children: [
          Styles.hGap15,
          Container(
            width: 40.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: Styles.cEFEDED,
              borderRadius: BorderRadius.circular(8.h),
            ),
          ),
          Styles.hGap15,
          Padding(
            padding: Styles.padH20,
            child: SizedBox(
              height: 56.h,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  prefixIcon: Padding(
                    padding: Styles.padH10,
                    child: SvgPicture.asset(
                      AlgAssets.targetLocation,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.close,
                    color: Styles.c9D9D9D,
                    size: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.h),
                    borderSide: BorderSide(
                      color: Styles.c2A2537,
                      width: 1.w,
                    ),
                  ),
                  hintText: "Current location",
                  hintStyle: Styles.fontStyle14.copyWith(
                    color: Styles.c9D9D9D,
                  ),
                ),
              ),
            ),
          ),
          Styles.hGap10,
          Padding(
            padding: Styles.padH20,
            child: SizedBox(
              height: 56.h,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  prefixIcon: const Padding(
                      padding: Styles.padH10,
                      child: Icon(
                        Icons.pin_drop_outlined,
                        color: Colors.white,
                      )),
                  suffixIcon: const Icon(
                    Icons.swap_vert,
                    color: Styles.c9D9D9D,
                    size: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.h),
                    borderSide: BorderSide(
                      color: Styles.c2A2537,
                      width: 1.w,
                    ),
                  ),
                  hintText: "Where to ?",
                  hintStyle: Styles.fontStyle14.copyWith(
                    color: Styles.c9D9D9D,
                  ),
                ),
              ),
            ),
          ),
          Styles.hGap15,
          Padding(
            padding: Styles.padH20,
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              children: [
                Container(
                  height: 48.h,
                  width: 97.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                   color: Styles.cF1F1F1.withAlpha(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "14:00",
                        style: Styles.fontStyle14.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        Icons.schedule,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 48.h,
                  width: 173.h,
                  padding: Styles.padH20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Styles.cF1F1F1.withAlpha(25),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.bus_alert_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Styles.cFF8811),
                  child: const Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          // Styles.hGap15,

        ],
      ),
    );
  }
}
