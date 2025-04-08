import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/views/overview_pages/your_depatures_page.dart';
import 'package:along/src/widgets/overviwew_widgets/next_depatures_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class NextDeparturesButtomsheet extends StatelessWidget {
  const NextDeparturesButtomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.w,
      width: 430.w,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Styles.cFFFFFF,
            Styles.cFFFFFF,
            Styles.cF1F1F1,
            Styles.cF1F1F1,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Styles.hGap20,
          Text(
            "Next Depatures",
            style: Styles.fontStyle16
                .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
          Styles.hGap30,
          Padding(
            padding: Styles.padH30 + Styles.padH30 + Styles.padH10,
            child: Row(
              children: [
                Container(
                  height: 44.w,
                  width: 91.w,
                  decoration: BoxDecoration(
                      color: Styles.cFFFFFF,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Styles.c9D9D9D, width: 1.w)),
                  child: Center(
                    child: Row(
                      children: [
                        Styles.wGap5,
                        Text(
                          "14:00",
                          style: Styles.fontStyle14.copyWith(),
                        ),
                        Styles.wGap5,
                        SvgPicture.asset(AlgAssets.clockSvg,
                            colorFilter: const ColorFilter.mode(
                              Styles.c1F1F1F,
                              BlendMode.srcIn,
                            ))
                      ],
                    ),
                  ),
                ),
                Styles.wGap20,
                Container(
                  height: 44.w,
                  width: 91.w,
                  decoration: BoxDecoration(
                      color: Styles.cFFFFFF,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Styles.c9D9D9D, width: 1.w)),
                  child: Row(
                    children: [
                      Styles.wGap10,
                      Container(
                          height: 32.w,
                          width: 32.w,
                          decoration:
                              const BoxDecoration(color: Styles.cEFEDED),
                          child: SvgPicture.asset(AlgAssets.bigBus,
                              colorFilter: const ColorFilter.mode(
                                Styles.c1F1F1F,
                                BlendMode.srcIn,
                              ))),
                      Styles.wGap10,
                      SvgPicture.asset(AlgAssets.chevronDown)
                    ],
                  ),
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
          ),
          Styles.hGap30,
          SizedBox(
            height: 500.h, // specify the height
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        context.push(YourDepaturesPage.routhName);
                      },
                      child: const NextDepaturesCard()),
                  Styles.hGap10,
                  GestureDetector(
                      onTap: () {
                        context.push(YourDepaturesPage.routhName);
                      },
                      child: const NextDepaturesCard()),
                  Styles.hGap10,
                  GestureDetector(
                      onTap: () {
                        context.push(YourDepaturesPage.routhName);
                      },
                      child: const NextDepaturesCard()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
