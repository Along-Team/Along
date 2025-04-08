import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/header.dart';
import 'package:along/src/widgets/ticket_widgets/active_ticket_widget.dart';
import 'package:along/src/widgets/ticket_widgets/paid_tickets_widgets.dart';
import 'package:along/src/widgets/ticket_widgets/ticket_wallet_tab.dart';
import 'package:along/src/widgets/total_balance_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ActiveTickets extends StatelessWidget {
  static const routhName = "/wallet-active-tickets";
  const ActiveTickets({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: size.height * 0.1,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Styles.cFFCE48,
                  ),
                  child: const Padding(
                    padding: Styles.padV20,
                    child: Header(
                      bgColor: Styles.cFFCE48,
                      padding: Styles.padH20,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: size.height * 0.2.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Styles.cFFCE48,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25.r))),
                      child: Stack(
                        children: [
                          SvgPicture.asset(AlgAssets.path1),
                          Positioned(
                              right: 0,
                              child: SvgPicture.asset(AlgAssets.path2)),
                          Positioned(
                              bottom: 0,
                              left: 0,
                              child: SvgPicture.asset(AlgAssets.path3)),
                          Positioned(
                              bottom: -20,
                              right: 0,
                              child: SvgPicture.asset(AlgAssets.path4)),
                          Padding(
                            padding: Styles.padV20 + Styles.padH20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "My Wallet",
                                  style: Styles.fontStyle24,
                                ),
                                Container(
                                  height: 46.h,
                                  width: 133.w,
                                  decoration: BoxDecoration(
                                      color: Styles.c1F1F1F,
                                      borderRadius:
                                          BorderRadius.circular(20.r)),
                                  child: Center(
                                    child: Text(
                                      "Buy a Ticket",
                                      style: Styles.fontStyle14B
                                          .copyWith(color: Styles.cFAFAFA),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Add a SizedBox to ensure the Stack has enough height for scrolling
                SizedBox(height: 1000.h), // Adjust this value as needed
              ],
            ),
            Positioned(top: 200.h, left: 40.w, child: const BalanceWidget()),
            Positioned(top: 430.h, left: 25.w, child: const TicketWalletTab()),
            Positioned(
              top: 500.h,
              left: 20.w,
              child: Row(
                children: [
                  SvgPicture.asset(AlgAssets.ticket),
                  Styles.wGap10,
                  Text(
                    "Active Tickets",
                    style: Styles.fontStyle24,
                  ),
                  Styles.wGap20,
                  Styles.wGap20,
                  Container(
                    height: 40.w,
                    width: 144.w,
                    decoration: BoxDecoration(
                        color: Styles.cFAFAFA,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: Styles.cFAFAFAdu)),
                    child: Padding(
                      padding: Styles.padH10,
                      child: Row(
                        children: [
                          Text(
                            "Most Recent",
                            style: Styles.fontStyle14,
                          ),
                          Styles.wGap10,
                          SvgPicture.asset(AlgAssets.chevronDown)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                top: 600.h, left: 25.w, child: const ActiveTicketWidget()),
            Positioned(
              top: 830.h,
              left: 20.w,
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.history)),
                  Styles.wGap10,
                  Text(
                    "Previous tickets",
                    style: Styles.fontStyle20,
                  ),
                  Styles.wGap20,
                  Styles.wGap20,
                  Styles.wGap20,
                  Container(
                    height: 40.w,
                    width: 98.w,
                    decoration: BoxDecoration(
                        color: Styles.cFAFAFA,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: Styles.cFAFAFAdu)),
                    child: Padding(
                      padding: Styles.pad10,
                      child: Row(
                        children: [
                          Text(
                            "Older",
                            style: Styles.fontStyle14,
                          ),
                          Styles.wGap10,
                          SvgPicture.asset(AlgAssets.chevronDown)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Positioned(
              top: 900.h,
              left: 20.w,
              child: SizedBox(
                width: MediaQuery.of(context).size.width -
                    40.w, // Screen width minus left and right margins
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Styles.wGap10,
                      PaidTicketsWidgets(),
                      Styles.wGap10,
                      PaidTicketsWidgets(),
                      Styles.wGap10,
                      PaidTicketsWidgets(),
                      Styles.wGap10,
                      PaidTicketsWidgets(),
                    ],
                  ),
                ),
              ),
            ),
            // Positioned(
            //   top: 900.h,
            //   left: 20.w,
            //   child: const SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         Styles.wGap10,
            //         PaidTicketsWidgets(),
            //         Styles.wGap10,
            //         PaidTicketsWidgets(),
            //         Styles.wGap10,
            //         PaidTicketsWidgets(),
            //         Styles.wGap10,
            //         PaidTicketsWidgets(),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
