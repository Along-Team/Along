import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/overviwew_widgets/name_location_widget.dart';
import 'package:along/src/widgets/overviwew_widgets/recent_trips_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DestinationButtomsheetWidget extends StatelessWidget {
  const DestinationButtomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r)),
        gradient: const LinearGradient(
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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Styles.hGap20,
            Center(
              child: Text(
                "Your Destination",
                style: Styles.fontStyle20
                    .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
            ),
            Styles.hGap30,
            const Center(child: NameLocationWidget()),
            Styles.hGap30,
            Padding(
              padding: Styles.padH20,
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 29.w,
                        width: 29.w,
                        decoration: BoxDecoration(
                            color: Styles.cFAFAFAdu,
                            borderRadius: BorderRadius.circular(30.r)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.history,
                            color: Styles.c1A1528,
                            size: 11.sp,
                          ),
                        ),
                      ),
                      Styles.wGap20,
                      Text(
                        "Recent Trips",
                        style: Styles.fontStyle16.copyWith(
                            color: Styles.c9D9D9D, fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Styles.hGap10,
            const Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Styles.hGap10,
                    RecentTripsWidget(),
                    Styles.hGap10,
                    RecentTripsWidget(),
                    Styles.hGap10,
                    RecentTripsWidget(),
                    Styles.hGap5,
                  ],
                ),
              ),
            ),
            Padding(
              padding: Styles.padH20 + Styles.padV10,
              child: Text(
                "Saved places",
                style: Styles.fontStyle14.copyWith(
                    fontWeight: FontWeight.w700, color: Styles.c9D9D9D),
              ),
            ),
            Styles.hGap10,
            Padding(
              padding: Styles.padH20,
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 52.w,
                    width: 102.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: Styles.cFFFFFF,
                        border:
                            Border.all(color: Styles.cFAFAFAdu, width: 3.w)),
                    child: Row(
                      children: [
                        Styles.wGap5,
                        Image.asset(AlgAssets.homeLogo),
                        Styles.wGap5,
                        Text(
                          "Home",
                          style: Styles.fontStyle14
                              .copyWith(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Styles.wGap20,
                  Container(
                    height: 52.w,
                    width: 102.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: Styles.cFFFFFF,
                        border:
                            Border.all(color: Styles.cFAFAFAdu, width: 3.w)),
                    child: Row(
                      children: [
                        Styles.wGap5,
                        Image.asset(AlgAssets.workIcon),
                        Styles.wGap5,
                        Text(
                          "Work",
                          style: Styles.fontStyle14
                              .copyWith(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Styles.wGap20,
                  Container(
                    height: 52.w,
                    width: 102.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: Styles.cFFFFFF,
                        border:
                            Border.all(color: Styles.cFAFAFAdu, width: 3.w)),
                    child: Row(
                      children: [
                        Styles.wGap5,
                        Image.asset(AlgAssets.schoolIcon),
                        Styles.wGap5,
                        Text(
                          "School",
                          style: Styles.fontStyle14
                              .copyWith(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Styles.hGap20,
            Center(
              child: SizedBox(
                  height: 54.h,
                  width: 382.w,
                  child: Button(text: "Confirm Selection", onPressed: () {})),
            ),
          ],
        ),
      ),
    );
  }
}
