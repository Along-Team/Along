import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketPaymentOptionTab extends StatefulWidget {
  const TicketPaymentOptionTab({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TicketWalletTabState createState() => _TicketWalletTabState();
}

class _TicketWalletTabState extends State<TicketPaymentOptionTab> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      width: 382.w,
      decoration: BoxDecoration(
          color: Styles.cFAFAFA,
          borderRadius: BorderRadius.circular(16.0.r),
          border: Border.all(
            color: Styles.cEFEDED,
            width: 2.w,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0.r),
                ),
                backgroundColor:
                    _currentIndex == 0 ? Colors.white : Styles.cEFEDED,
              ),
              child: Text(
                'Transfer',
                style: TextStyle(
                  color: _currentIndex == 0 ? Colors.black : Colors.grey,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0.r),
                ),
                backgroundColor:
                    _currentIndex == 1 ? Colors.white : Styles.cEFEDED,
              ),
              child: Text(
                'Debit Card',
                style: TextStyle(
                  color: _currentIndex == 1 ? Colors.black : Colors.grey,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0.r),
                ),
                backgroundColor:
                    _currentIndex == 2 ? Colors.white : Styles.cEFEDED,
              ),
              child: Text(
                'Solana',
                style: TextStyle(
                  color: _currentIndex == 2 ? Colors.black : Colors.grey,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
