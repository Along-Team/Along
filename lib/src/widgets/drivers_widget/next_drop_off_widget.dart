import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/drivers_widget/dropoff_price_list.dart';
import 'package:along/src/widgets/ticket_widgets/ticket_informatioon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NextDropOffWidget extends StatelessWidget {
  const NextDropOffWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.w,
      width: double.infinity.w,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Styles.cFFFFFF,
            Styles.cFFFFFF,
            Styles.cF1F1F1,
            Styles.cF1F1F1,
          ],
        ),
      ),
      child: Column(
        children: [
          Styles.hGap10,
          Container(
            height: 4.w,
            width: 40.w,
            decoration: BoxDecoration(
                color: Styles.greyColor,
                borderRadius: BorderRadius.circular(999.r)),
          ),
          Styles.hGap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 28.w,
                width: 28.w,
                decoration: BoxDecoration(
                    color: Styles.cF5F5F5,
                    borderRadius: BorderRadius.circular(999.r)),
                child: Center(child: SvgPicture.asset(AlgAssets.nextDropoff)),
              ),
              Text(
                "Next Drop Off",
                style: Styles.fontStyle20.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                height: 36.w,
                width: 127.w,
                decoration: BoxDecoration(
                  color: Styles.cFFFFFF,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: Styles.cFAFAFAdu,
                    width: 2.w,
                  ),
                ),
                child: Padding(
                  padding: Styles.pad2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "IN 4 MINS",
                        style: Styles.fontStyle14.copyWith(),
                      ),
                      SvgPicture.asset(
                        AlgAssets.clockSvg,
                        height: 11.67.w,
                        width: 11.67.w,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Styles.hGap30,
          const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                NextDropOfPricefWidget(
                  priceText: '₦1,100',
                  timeText: 'About 4 Mins',
                  nextStopText: 'Life Camp BusStop',
                  status: "Drop off Soon ",
                ),
                Styles.hGap10,
                NextDropOfPricefWidget(
                  priceText: '₦900',
                  timeText: 'About 4 Mins',
                  nextStopText: 'Gwarimpa Bus Stop',
                  status: "Next Stop ",
                ),
                Styles.hGap10,
                NextDropOfPricefWidget(
                  priceText: '₦900',
                  timeText: 'About 4 Mins',
                  nextStopText: 'Gwarimpa Bus Stop',
                  status: "Next Stop ",
                ),
                Styles.hGap10,
                NextDropOfPricefWidget(
                  priceText: '₦900',
                  timeText: 'About 4 Mins',
                  nextStopText: 'Gwarimpa Bus Stop',
                  status: "Next Stop ",
                ),
              ],
            ),
          ),
          Styles.hGap30,
          Styles.hGap30,
          Styles.hGap30,
          Styles.hGap30,
          Styles.hGap30,
          Styles.hGap10,
          Container(
              height: 98.w,
              width: 430.w,
              decoration: const BoxDecoration(
                color: Styles.cFFFFFF,
              ),
              child: Padding(
                padding: Styles.pad15,
                child: SizedBox(
                    height: 54.w,
                    width: 382.w,
                    child: Button(
                      text: "See Details",
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.75,
                              decoration: BoxDecoration(
                                color: Styles.cFFFFFF,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.r),
                                  topRight: Radius.circular(25.r),
                                ),
                              ),
                              child: const TicketInformation(),
                            );
                          },
                        );
                      },
                    )),
              )),
        ],
      ),
    );
  }
}
