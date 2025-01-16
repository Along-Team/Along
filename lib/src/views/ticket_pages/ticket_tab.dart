import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/background_header.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/header.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TicketTab extends StatefulWidget {
  const TicketTab({super.key});
  static const routhName = "/ticketTab";

  @override
  State<TicketTab> createState() => _TicketTabState();
}

class _TicketTabState extends State<TicketTab> {
  String tabValue = "Tickets";

  ///  onTap: () => context.pushNamed(TicketDeparture.routhName),
  ///
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 20,
            width: double.infinity,
            color: Styles.cFFCE48,
          ),
          const Header(
            bgColor: Styles.cFFCE48,
            padding: Styles.padH20,
          ),
          Container(
            height: size.height * 0.35,
            width: size.width,
            color: Colors.amberAccent,
            child: Stack(
              children: [
                const BackgroundHeader(),
                Positioned(
                  top: 25,
                  width: size.width,
                  child: Padding(
                    padding: Styles.padH20,
                    child: Row(
                      children: [
                        Text("My Wallet", style: Styles.fontStyle24),
                        const Spacer(),
                        SizedBox(
                          width: 133,
                          height: 46,
                          child: Button(
                            text: "Buy a ticket",
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  width: size.width,
                  child: Center(
                    child: Container(
                      height: 194.h,
                      width: 351.w,
                      decoration: BoxDecoration(
                        color: Styles.btnBlack,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Text(
                            "Total Balance",
                            style: Styles.fontStyle14.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "₦ 4,900.11",
                            style: Styles.fontStyle32
                                .copyWith(color: Colors.white),
                          ),
                          // Styles.hGap10,
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _withdrawTile(
                                AlgAssets.withdraw,
                                "Withdraw",
                              ),
                              Styles.wGap10,
                              _withdrawTile(
                                AlgAssets.add,
                                "Add cash",
                              ),
                              Styles.wGap10,
                              _withdrawTile(
                                AlgAssets.moreHorizontal,
                                "More",
                              ),
                            ],
                          ),
                          // Styles.hGap10,
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Styles.hGap2,
          CupertinoSlidingSegmentedControl<String>(
            backgroundColor: Styles.cFAFAFA,
            thumbColor: Colors.white,
            groupValue: tabValue,
            onValueChanged: (value) {
              if (value == null) return;
              setState(() {
                tabValue = value;
              });
            },
            children: <String, Widget>{
              "Tickets": Container(
                height: 50.h,
                width: 186.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50.r)),
                child: const Center(child: Text("Tickets")),
              ),
              "Wallets": Container(
                height: 50.h,
                width: 186.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50.r)),
                child: const Center(
                  child: Text("Wallets"),
                ),
              )
            },
          ),
          if (tabValue == "Tickets") ...[
            Styles.hGap20,
            Padding(
              padding: Styles.padH20,
              child: Row(
                children: [
                  SvgPicture.asset(AlgAssets.ticket),
                  Styles.wGap10,
                  Text(
                    "Active tickets",
                    style: Styles.fontStyle20,
                  ),
                  const Spacer(),
                  Container(
                    // height: 40,
                    // width: 120.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Styles.c9D9D9D,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: Styles.pad10,
                    child: const Row(
                      children: [
                        Text("Most Recent"),
                        Styles.wGap5,
                        Icon(Icons.keyboard_arrow_down_outlined),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Styles.hGap10,
            Container(
              height: 187.h,
              width: 382.w,
              decoration: BoxDecoration(
                color: Styles.btnBlack,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 187.h,
                      width: 382.w,
                      padding: Styles.pad20,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "14:02 ",
                                style: Styles.fontStyle21.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "0h: 23m",
                                style: Styles.fontStyle12.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Styles.cFF8811,
                                ),
                                child: Row(
                                  children: [
                                    const Text(" "),
                                    const Icon(Icons.directions_bus),
                                    Text(
                                      " 026  ",
                                      style: Styles.fontStyle12,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Styles.hGap10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Location",
                                    style: Styles.fontStyle10.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Nathan Ogoh",
                                    style: Styles.fontStyle14.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "To",
                                style: Styles.fontStyle12.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Destination",
                                    style: Styles.fontStyle10.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Lifecamp",
                                    style: Styles.fontStyle14.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Styles.hGap30,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Price with travel card",
                                style: Styles.fontStyle14.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "₦ 1,100",
                                style: Styles.fontStyle14.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -16,
                    top: 90,
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: 109,
                    width: 382.w,
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 30.0,
                        right: 30.0,
                      ),
                      child: DottedLine(
                        direction: Axis.horizontal,
                        lineLength: double.infinity,
                        lineThickness: 2.0,
                        dashColor: Colors.white,
                        dashGapLength: 6.0,
                      ),
                    ),
                  ),
                  Positioned(
                    right: -16,
                    top: 90,
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Styles.hGap10,
          ] else ...[
            Styles.hGap10,
            const Text("Wallets view "),
            Styles.hGap10,
          ]
        ],
      ),
    );
  }

  Widget _withdrawTile(String img, String text) {
    return Container(
      width: 89.w,
      height: 74.h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(11 / 100),
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Padding(
        padding: Styles.padH10,
        child: Column(
          children: [
            Styles.hGap10,
            Container(
              height: 36.h,
              width: 73.w,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(10 / 100),
                borderRadius: BorderRadius.circular(8.0.r),
              ),
              child: Center(
                child: SvgPicture.asset(
                  img,
                  fit: BoxFit.scaleDown,
                  height: 18.h,
                  width: 18.w,
                ),
              ),
            ),
            Styles.hGap2,
            Text(
              text,
              style: Styles.fontStyle10.copyWith(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
