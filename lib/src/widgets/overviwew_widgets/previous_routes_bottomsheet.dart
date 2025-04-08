import 'package:along/src/style/style.dart';
import 'package:along/src/widgets/overviwew_widgets/previous_routes_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreviousRoutesBottomsheet extends StatelessWidget {
   final VoidCallback onClose;
  const PreviousRoutesBottomsheet({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 306.w,
        width: 430.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Styles.cFFFFFF,
              Styles.cF1F1F1,
              Styles.cF1F1F1,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Styles.hGap15,
            Padding(
              padding: Styles.padH20,
              child: Text("Previous Routes",
                  style: Styles.fontStyle20
                      .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: Styles.padH20 + Styles.padV10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bring back one of your previous trips",
                    style: Styles.fontStyle12,
                  ),
                  Column(
                    children: [
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
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 20.sp,
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Styles.hGap20,
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Styles.wGap10,
                   PreviousRoutesWidget(onClose: onClose),
                  Styles.wGap10,
                  PreviousRoutesWidget(onClose: onClose),
                  Styles.wGap10,
                 PreviousRoutesWidget(onClose: onClose),
                  Styles.wGap10
                ],
              ),
            )
          ],
        ));
  }
}
