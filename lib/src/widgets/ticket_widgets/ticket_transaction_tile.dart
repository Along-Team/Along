import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketTransactionTile extends StatelessWidget {
  final String amountText;
  final String transactionText;
  final String bankText;
  final String nameText;
  final String imagePath;

  const TicketTransactionTile({
    super.key,
    required this.amountText,
    required this.transactionText,
    required this.bankText,
    required this.nameText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 72.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Styles.hGap5,
              Text(
                amountText,
                style:
                    Styles.fontStyle20.copyWith(color: Styles.secondaryColor),
              ),
              Styles.hGap5,
              Text(
                transactionText,
                style: Styles.fontStyle12.copyWith(color: Styles.c404040),
              ),
            ],
          ),
          Styles.wGap30,
          Column(
            children: [
              Styles.hGap5,
              Text(
                bankText,
                style: Styles.fontStyle12.copyWith(color: Styles.c404040),
              ),
              Styles.hGap5,
              Text(nameText, style: Styles.fontStyle20),
            ],
          ),
          Styles.wGap10,
          CircleAvatar(
            radius: 20.r,
            child: Image.asset(
              imagePath,
              width: 24.w,
              height: 24.w,
            ),
          ),
        ],
      ),
    );
  }
}
