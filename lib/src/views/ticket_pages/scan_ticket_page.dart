import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/views/overview_pages/see_bus_page.dart';
import 'package:along/src/views/ticket_pages/active_tickets.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/header.dart';
import 'package:along/src/widgets/ticket_widgets/scan_ticket_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ScanTicketPage extends StatelessWidget {
  static const routhName = "/scan-ticket";

  const ScanTicketPage({super.key});

  // @override

  // const ScanTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Styles.cFFCE48,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Styles.hGap20,
          const Header(
            bgColor: Styles.cFFCE48,
            padding: Styles.padH20,
          ),
          Stack(
            children: [
              SvgPicture.asset(
                AlgAssets.path5,
              ),
              Positioned(
                top: 60.h,
                left: 25.w,
                child: Row(
                  children: [
                    Text(
                      "Your Ticket",
                      style: Styles.fontStyle24,
                    ),
                    Styles.wGap30,
                    Styles.wGap30,
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
                top: 180.h,
                left: 25.w,
                child: const TicketScanWidget(
                  containerColor: Styles.cFFF8F0,
                  dashedLineColor: Styles.primaryColor,
                  qrCodeColor: Styles.c1F1F1F,
                  timeColor: Styles.c1F1F1F,
                  durationColor: Styles.c1F1F1F,
                  busNumberTextColor: Styles.c1F1F1F,
                  locationLabelColor: Styles.c1F1F1F,
                  destinationLabelColor: Styles.c1F1F1F,
                  locationTextColor: Styles.c1F1F1F,
                  destinationTextColor: Styles.c1F1F1F,
                  expiresOnLabelColor: Styles.c1F1F1F,
                  expiresOnTimeColor: Styles.c1F1F1F,
                  paidWithLabelColor: Styles.c1F1F1F,
                  paidWithAmountColor: Styles.c1F1F1F,
                  expiresOnLabel: "Expires in",
                  expiresOnTime: "11:00 pm",
                  startJourney: "Jabi Bus Stop",
                  endJourney: "Lifecamp Bus Stop",
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 730.h, 210, 0),
                child: SizedBox(
                  height: 54.h,
                  child: Button(
                    text: '',
                    onPressed: () {
                      context.push(ActiveTickets.routhName);
                    },
                    textWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.arrow_back,
                          color: Styles.cFFFFFF,
                        ),
                        Styles.wGap10,
                        Text(
                          'Your Tickets',
                          style: Styles.fontStyle14.copyWith(
                              color: Styles.cFFFFFF,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(210, 730.h, 30, 0),
                child: SizedBox(
                  height: 54.h,
                  child: Button(
                    btnColor: Styles.secondaryColor,
                    text: '',
                    onPressed: () {
                      context.push(SeeBusPage.routhName);
                    },
                    textWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AlgAssets.seeBus),
                        Styles.wGap10,
                        Text(
                          'See Bus',
                          style: Styles.fontStyle14
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
