import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketWalletTab extends StatefulWidget {
  const TicketWalletTab({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TicketWalletTabState createState() => _TicketWalletTabState();
}

class _TicketWalletTabState extends State<TicketWalletTab> {
  bool isTicketsActive = true;

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
                  isTicketsActive = true;
                });
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0.r),
                ),
                backgroundColor:
                    isTicketsActive ? Colors.white : Styles.cEFEDED,
              ),
              child: Text(
                'Tickets',
                style: TextStyle(
                  color: isTicketsActive ? Colors.black : Colors.grey,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  isTicketsActive = false;
                });
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0.r),
                ),
                backgroundColor:
                    !isTicketsActive ? Colors.white : Styles.cEFEDED,
              ),
              child: Text(
                'Wallet',
                style: TextStyle(
                  color: !isTicketsActive ? Colors.black : Colors.grey,
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
