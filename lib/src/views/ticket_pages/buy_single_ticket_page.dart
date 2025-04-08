import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/views/ticket_pages/scan_ticket_page.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/header.dart';
import 'package:along/src/widgets/ticket_widgets/ticket_payment_option_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class BuySingleTicketPage extends StatelessWidget {
  static const routhName = "/buy-single-ticket";
  const BuySingleTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.cFFCE48,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(25.r))),
                child: const Header(
                  bgColor: Styles.cFFCE48,
                  padding: Styles.padH20,
                ),
              ),
              Container(
                height: size.height * 0.25.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.cFFCE48,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(25.r))),
                child: Stack(
                  children: [
                    SvgPicture.asset(AlgAssets.path1),
                    Positioned(
                        right: 0, child: SvgPicture.asset(AlgAssets.path4)),
                    Positioned(
                      top: 60.h,
                      left: 25.w,
                      child: Row(
                        children: [
                          Text(
                            "Buy Single Ticket",
                            style: Styles.fontStyle24,
                          ),
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap15,
                          Container(
                            height: 30.w,
                            width: 103.w,
                            decoration: BoxDecoration(
                                color: Styles.cFFD89F,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.r))),
                            child: Row(
                              children: [
                                Styles.wGap5,
                                Text(
                                  "Adult",
                                  style: Styles.fontStyle16.copyWith(
                                      color: Styles.c2A2537,
                                      fontWeight: FontWeight.w600),
                                ),
                                Styles.wGap20,
                                SvgPicture.asset(AlgAssets.adultSvg)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 120.h,
                      left: 35.w,
                      child: Row(
                        children: [
                          Text(
                            "₦4,900",
                            style: Styles.fontStyle24,
                          ),
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap15,
                          Row(
                            children: [
                              SvgPicture.asset(AlgAssets.multiProfile),
                              Styles.wGap10,
                              Text(
                                "Token",
                                style: Styles.fontStyle20.copyWith(
                                    color: Styles.c795000,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 200.h,
                      child: Text(
                        "Your Payment Methods",
                        style: Styles.fontStyle20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 350.h,
            child: Padding(
              padding: Styles.padH25,
              child: Text(
                "Your Payment Methods",
                style: Styles.fontStyle14.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
          Positioned(
              top: 400.h, left: 20.w, child: const TicketPaymentOptionTab()),
          Positioned(
            top: 490.h,
            left: 30.w,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.account_balance,
                          color: Styles.c5A78FF,
                        )),
                    Text(
                      "Transfer",
                      style: Styles.fontStyle20.copyWith(
                          color: Styles.c5A78FF,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp),
                    )
                  ],
                ),
                Styles.hGap30,
                Text(
                  "Bank Details",
                  style: Styles.fontStyle16
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 18.sp),
                ),
              ],
            ),
          ),
          Positioned(
              top: 510.h,
              left: 250.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Ticket Price",
                    style: Styles.fontStyle12.copyWith(
                      fontSize: 12.5.sp,
                      fontWeight: FontWeight.w700,
                      color: Styles.c404040,
                    ),
                  ),
                  Styles.hGap5,
                  Text(
                    "₦1,100",
                    style: Styles.fontStyle12.copyWith(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w700,
                      color: Styles.c1F1F1F,
                    ),
                  ),
                ],
              )),
          Positioned(
            top: 660.h,
            left: 25.w,
            child: Row(
              children: [
                Container(
                  height: 61.w,
                  width: 171.w,
                  decoration: BoxDecoration(
                    color: Styles.cFAFAFA,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      "0123456789",
                      style: Styles.fontStyle16.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Styles.c1F1F1F),
                    ),
                  ),
                ),
                Styles.wGap10,
                Container(
                  height: 61.w,
                  width: 171.w,
                  decoration: BoxDecoration(
                    color: Styles.cFAFAFA,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      "0123456789",
                      style: Styles.fontStyle16.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Styles.c1F1F1F),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 740.h,
            left: 25.w,
            child: Text(
              "After you have completed your transfer, you will be \n"
              "redirected to your ticket",
              style: Styles.fontStyle12.copyWith(color: Styles.c9D9D9D),
              textAlign: TextAlign.left,
              softWrap: true,
            ),
          ),
          Positioned(
            top: 800.h,
            left: 0,
            child: Container(
              height: 60.h,
              width: 570.w,
              decoration: const BoxDecoration(
                color: Styles.cFAFAFA,
              ),
              child: Row(
                children: [
                  Styles.wGap15,
                  SvgPicture.asset(AlgAssets.seeBus),
                  Styles.wGap20,
                  Text(
                    "Travel Guarantee Included in the Purchase",
                    style: Styles.fontStyle16.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Styles.c404040),
                  ),
                  Styles.wGap20,
                  Container(
                    height: 30.w,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: Styles.secondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(100.r)),
                    ),
                    child: Center(
                      child: SvgPicture.asset(AlgAssets.questionMark),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 870.h,
            left: 0.w,
            right: 0.w,
            child: Padding(
              padding: Styles.padH30,
              child: Button(
                  text: "Pay with Transfer",
                  onPressed: () {
                    context.push(ScanTicketPage.routhName);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
