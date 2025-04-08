import 'package:along/src/style/style.dart';

import 'package:along/src/utils/extentions.dart';

import 'package:along/src/views/trips_pages/start_trip_page.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/drivers_widget/customer_review_widget.dart';
import 'package:along/src/widgets/drivers_widget/driver_information_widget.dart';
import 'package:along/src/widgets/overviwew_widgets/bus_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';

class SeeBusButtomSheetWidget extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onToggle;
  final BuildContext context;

  const SeeBusButtomSheetWidget({
    super.key,
    required this.isExpanded,
    required this.onToggle,
    required this.context,
  });

  // get context => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !isExpanded ? onToggle : null,
      child: Container(
        height: isExpanded ? 600.h : 170.h,
        width: 430.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.r),
            topRight: Radius.circular(40.r),
          ),
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
        child: Column(
          children: [
            // Header with toggle on tap
            GestureDetector(
              onTap: onToggle,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      height: 4.w,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Styles.c1A1528,
                        borderRadius: BorderRadius.circular(999.r),
                      ),
                    ),
                  ),
                  Styles.hGap10,
                  const Center(child: BusNumberWidget())
                ],
              ),
            ),

            Expanded(
              child:
                  isExpanded ? buildExpandedContent() : buildCollapsedContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpandedContent() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Styles.hGap10,

          const DriverInformationWidget(),
          Styles.hGap10,
          //CustomerReview(),
          Styles.hGap10,
          Container(
            width: double.infinity,
            height: 200.h,
            padding: EdgeInsets.only(left: 20.w, top: 0, bottom: 0),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                10.widthBox,
                const CustomerReview(),
                10.widthBox,
                const CustomerReview(),
              ],
            ),
          ),

          Styles.hGap20,
          Styles.hGap20,

          Styles.hGap20,

          Container(
            height: 98.w,
            color: Styles.cFFFFFF,
            child: Center(
              child: SizedBox(
                  height: 54.h,
                  width: 382.w,
                  child: Button(
                      text: "See Details",
                      onPressed: () {
                        context.push(StartTripPage.routhName);
                      })),
            ),
          )

          // SizedBox(
          //   height: 1200.h,
          //   child: Stack(
          //     children: [

          //     ],
          //   ),
          // ),
          // Column(
          //   children: [
          //     Styles.hGap30,
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget buildCollapsedContent() {
    return const Column(
      children: [
        // Styles.hGap,
      ],
    );
  }
}
