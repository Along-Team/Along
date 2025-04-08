import 'package:along/src/style/style.dart';
import 'package:along/src/widgets/drivers_widget/progress_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressBarBottomSheetWidget extends StatelessWidget {
  const ProgressBarBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 306.w,
        width: 430.w,
        decoration: BoxDecoration(
          color: Styles.cFFFFFF,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Styles.hGap15,
            Padding(
              padding: Styles.padH20,
              child: Text("Progres Bar",
                  style: Styles.fontStyle20
                      .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: Styles.padH20 + Styles.padV10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Money made with Along",
                    style: Styles.fontStyle12,
                  ),
                  Container(
                    height: 44.w,
                    width: 44.w,
                    decoration: BoxDecoration(
                      color: Styles.cFFFFFF,
                      borderRadius: BorderRadius.circular(14.r),
                      border: Border.all(color: Styles.cEFEDED),
                    ),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_sharp)),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: Styles.padH20,
              child: ProgressBarWidget(),
            )
          ],
        ));
  }
}
