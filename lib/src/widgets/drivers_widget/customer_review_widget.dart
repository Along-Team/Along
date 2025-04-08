import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerReview extends StatelessWidget {
  const CustomerReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 217.w,
      width: 342.w,
      decoration: BoxDecoration(
        color: Styles.cFFFFFF,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        children: [
          Styles.hGap20,
          Row(
            children: [
              Styles.wGap20,
              ClipOval(
                child: Image.asset(
                  AlgAssets.manImg,
                  height: 47,
                  width: 47,
                  fit: BoxFit.cover,
                ),
              ),
              Styles.wGap5,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Asuefi",
                    style: Styles.fontStyle12.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: Styles.c2A2537),
                  ),
                  SizedBox(
                      height: 14.4.w,
                      width: 72.w,
                      child: Image.asset(AlgAssets.partialStar))
                ],
              ),
              Styles.hGap5,
            ],
          ),
          Styles.hGap10,
          SizedBox(
            height: 90,
            width: 255,
            child: Text(
              "This is a review the driver is good at what he does",
              style: Styles.fontStyle12.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                color: Styles.c795000,
              ),
              maxLines: 20,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
