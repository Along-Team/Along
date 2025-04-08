import 'package:along/src/style/style.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/drivers_widget/pickup_info_overlayportal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickupStatus extends StatelessWidget {
  const PickupStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.w,
      width: 382.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "LifeCamp Bus Stop",
                style: Styles.fontStyle20,
              ),
              Text(
                "4 MINS, ETA | 2 PICKUPS WAITING",
                style: Styles.fontStyle12.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Styles.wGap10,
          SizedBox(
              height: 48.h,
              width: 140.w,
              child: Button(
                text: "Pickups",
                textColor: Styles.c1F1F1F,
                onPressed: () {
                  showGeneralDialog(
                    context: context,
                    transitionDuration: const Duration(milliseconds: 500),
                    pageBuilder: (context, anim1, anim2) {
                      return SizedBox(
                        height: 158.h,
                        width: 385.w,
                        child: const PickupInfoOverlayportal(),
                      );
                    },
                    transitionBuilder: (context, anim1, anim2, child) {
                      return SlideTransition(
                        position: Tween(
                                begin: const Offset(1, 0),
                                end: const Offset(0, 0))
                            .animate(anim1),
                        child: child,
                      );
                    },
                  );
                },
                btnColor: Styles.primaryColor,
              ))
        ],
      ),
    );
  }
}
