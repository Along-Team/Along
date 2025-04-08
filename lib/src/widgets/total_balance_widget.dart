import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194.w,
      width: 351.w,
      decoration: BoxDecoration(
        color: Styles.c1F1F1F, // Dark background color
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Styles.hGap15,
          Text(
            'Total Balance',
            style: Styles.fontStyle14
                .copyWith(color: Styles.cFFFFFF, fontWeight: FontWeight.w400),
          ),
          Styles.hGap5,
          Text('₦4,900.11',
              style: Styles.fontStyle32.copyWith(color: Styles.cFAFAFA)),
          Styles.hGap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton('Withdraw', Icons.upload_rounded, () {}),
              buildButton('Add cash', Icons.add, () {}),
              buildButton('More', Icons.more_horiz, () {}),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(String text, IconData icon, VoidCallback onPressed) {
    return SizedBox(
      width: 100.w,
      height: 70.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Styles.c1CFFFFFF, // Button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          padding: Styles.padH20 + Styles.padV10,
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: Styles.cFFFFFF,
            ),
            Text(text,
                style: Styles.fontStyle10.copyWith(color: Styles.cFFFFFF)),
          ],
        ),
      ),
    );
  }
}
