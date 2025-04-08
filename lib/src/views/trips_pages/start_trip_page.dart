import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/ticket_widgets/scan_ticket_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StartTripPage extends StatelessWidget {
  static const routhName = "/start-trip-page";
  const StartTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.cFFFFFF,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Trip Ended',
          style: Styles.fontStyle14,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options
            },
          ),
        ],
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Styles.hGap5,
          Center(child: SvgPicture.asset(AlgAssets.successIcon)),
          Styles.hGap5,
          Center(
            child: Text(
              "Trip Started",
              style: Styles.fontStyle20.copyWith(color: Styles.cFF000000),
            ),
          ),
          Styles.hGap5,
          Center(
            child: Text(
              "Our sensors have picked that you have ",
              style: Styles.fontStyle14.copyWith(color: Styles.c9E9E9E),
            ),
          ),
          Styles.hGap1,
          Center(
            child: Text(
              "board along",
              style: Styles.fontStyle14.copyWith(color: Styles.c9E9E9E),
            ),
          ),
          Styles.hGap10,
          const TicketScanWidget(
            containerColor: Styles.c1F1F1F,
            dashedLineColor: Styles.secondaryColor,
            qrCodeColor: Styles.cFFFFFF,
            timeColor: Styles.cFFFFFF,
            durationColor: Styles.cFFFFFF,
            busNumberTextColor: Styles.cFFFFFF,
            locationLabelColor: Styles.cFFFFFF,
            destinationLabelColor: Styles.cFFFFFF,
            locationTextColor: Styles.cFFFFFF,
            destinationTextColor: Styles.cFFFFFF,
            expiresOnLabelColor: Styles.cFFFFFF,
            expiresOnTimeColor: Styles.cFFFFFF,
            paidWithLabelColor: Styles.cFFFFFF,
            paidWithAmountColor: Styles.cFFFFFF,
            paidWithAmount: "₦1,100",
            paidWithLabel: "Pay with travel card",
            startJourney: "Nathan Ogoh                 ",
            endJourney: "Life Camp",
          ),
          Styles.hGap30,
          Center(
            child: SizedBox(
                height: 54.h,
                width: 327.w,
                child: Button(text: "See map", onPressed: () {})),
          )
        ],
      ),
    );
  }
}
