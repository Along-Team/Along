import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RecentTripsWidget extends StatelessWidget {
  const RecentTripsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.w,
      width: 382.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r), color: Styles.cFFFFFF),
      child: Row(
        children: [
          Styles.wGap5,
          ClipOval(
              child: Image.asset(
            AlgAssets.locationCurrent,
            height: 50.w,
            width: 50.w,
          )),
          Styles.wGap10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Styles.hGap15,
              Text(
                "Zone 3 Wuse, Abuja",
                style: Styles.fontStyle14,
              ),
              Styles.wGap5,
              Row(
                children: [
                  Image.asset(AlgAssets.redirectArrow),
                  Styles.wGap10,
                  Text(
                    "2 hours ago",
                    style: Styles.fontStyle12,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
