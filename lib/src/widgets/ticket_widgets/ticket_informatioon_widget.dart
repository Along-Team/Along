import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/ticket_widgets/active_ticket_widget.dart';
import 'package:along/src/widgets/ticket_widgets/paid_tickets_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TicketInformation extends StatelessWidget {
  const TicketInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Styles.hGap15,
        Text(
          "Ticket Information",
          style: Styles.fontStyle20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "1 Adult",
              style: Styles.fontStyle48,
            ),
            Text(
              "Maria Philip",
              style: Styles.fontStyle16.copyWith(color: Styles.c9D9D9D),
            ),
            SvgPicture.asset(AlgAssets.lady)
          ],
        ),
        Styles.hGap20,
        const ActiveTicketWidget(),
        Styles.hGap30,
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.history)),
            Styles.wGap10,
            Text(
              "Previous Tickets",
              style: Styles.fontStyle24,
            ),
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
            ),
          ],
        ),
        Styles.hGap10,
        const SingleChildScrollView(
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
        Styles.hGap30,
        Container(
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
      ],
    );
  }
}
