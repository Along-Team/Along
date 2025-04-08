import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DriverSettingWidget extends StatelessWidget {
  const DriverSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.w,
      width: 382.w,
      decoration: BoxDecoration(
          color: Styles.c1A1528, borderRadius: BorderRadius.circular(28.r)),
      child: Column(
        children: [
          Styles.hGap15,
          Row(
            ///mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Styles.wGap15,
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.location_pin,
                  color: Styles.cFFFFFF,
                ),
              ),
              Styles.wGap15,
              Text(
                "Start Along",
                style: Styles.fontStyle14.copyWith(color: Styles.cFFFFFF),
              ),
              Styles.wGap30,
              Styles.wGap30,
              Styles.wGap30,
              Styles.wGap30,
              Styles.wGap15,
              SvgPicture.asset(AlgAssets.arrowUpDown)
            ],
          ),
          Styles.hGap20,
          Padding(
            padding: Styles.padH30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ////First Row
                Row(
                  children: [
                    SvgPicture.asset(AlgAssets.clockSvg),
                    Styles.wGap15,
                    SvgPicture.asset(AlgAssets.bigBus)
                  ],
                ),

                //////Second Row
                Row(
                  children: [
                    SvgPicture.asset(
                      AlgAssets.chevronDown,
                      color: Styles.cFFFFFF,
                      colorFilter: const ColorFilter.mode(
                          Styles.cFFFFFF, BlendMode.srcIn),
                    ),
                    Styles.wGap20,
                    Container(
                        height: 48.w,
                        width: 48.w,
                        decoration: BoxDecoration(
                            color: Styles.secondaryColor,
                            borderRadius: BorderRadius.circular(16.r)),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings_outlined,
                              )),
                        ))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
