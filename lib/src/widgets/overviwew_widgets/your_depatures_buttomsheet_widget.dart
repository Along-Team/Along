import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/views/ticket_pages/buy_single_ticket_page.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/overviwew_widgets/vertical_progress_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class YourDepaturesButtomSheet extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onToggle;
  final BuildContext context;

  const YourDepaturesButtomSheet({
    super.key,
    required this.isExpanded,
    required this.onToggle,
    required this.context,
  });

  // get context => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !isExpanded ? onToggle : null,
      child: Container(
        height: isExpanded ? 600.h : 170.h,
        width: 430.w,
        decoration: BoxDecoration(
          color: Styles.cFFFFFF,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.r),
            topRight: Radius.circular(40.r),
          ),
        ),
        child: Column(
          children: [
            // Header with toggle on tap
            GestureDetector(
              onTap: onToggle,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Container(
                        height: 4.w,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Styles.greyColor,
                          borderRadius: BorderRadius.circular(999.r),
                        ),
                      ),
                    ),
                   Styles.hGap10,
                    Center(
                      child: Text(
                        "Your Depature",
                        style: Styles.fontStyle14.copyWith(
                          color: Styles.c1F1F1F,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: Styles.padH20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "14:05",
                                style: Styles.fontStyle48,
                              ),
                              Styles.wGap10,
                              Text(
                                "23 min",
                                style: Styles.fontStyle16,
                              )
                            ],
                          ),
                          Container(
                            height: 40.w,
                            width: 40.w,
                            decoration: BoxDecoration(
                                color: Styles.secondaryColor,
                                borderRadius: BorderRadius.circular(16.r)),
                            child: Center(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.notification_add_outlined,
                                    color: Styles.c1F1F1F,
                                    size: 22.sp,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Conditional content based on expansion state
            Expanded(
              child:
                  isExpanded ? buildExpandedContent() : buildCollapsedContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildExpandedContent() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 1200.h,
            child: Stack(
              children: [
                Positioned(
                  top: 10.h,
                  left: 25.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Styles.wGap5,
                      Text('Jabi Abuja',
                          style: Styles.fontStyle14.copyWith(
                              color: Styles.c1F1F1F,
                              fontWeight: FontWeight.w400)),
                      Styles.wGap20,

                      Styles.wGap30,
                      Styles.wGap20,

                      Styles.wGap30,
                      Styles.wGap30,
                      Styles.wGap10,
                      Styles.wGap20,

                      Styles.wGap30,
                      Text('Lifecamp Abuja',
                          style: Styles.fontStyle14.copyWith(
                              color: Styles.c1F1F1F,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                Positioned(
                  top: 45.h,
                  //right: 25.w,
                  child: Padding(
                    padding: Styles.padH20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Styles.wGap5,

                        Text('Nathan Ogoh Ave',
                            style: Styles.fontStyle16.copyWith(
                                color: Styles.c404040,
                                fontWeight: FontWeight.w500)),
                        Styles.wGap20,
                        Styles.wGap30,

                        Text(
                          'To',
                          style: Styles.fontStyle14.copyWith(
                              color: Styles.c404040,
                              fontWeight: FontWeight.w400),
                        ),

                        Styles.wGap30,
                        Styles.wGap5,

                        Text('Lifecamp Bus Stop',
                            style: Styles.fontStyle16.copyWith(
                                color: Styles.c404040,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 100.h,
                  left: 20.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 28.w,
                        width: 92.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Styles.cF5F5F5,
                        ),
                        child: Row(
                          children: [
                            Styles.wGap5,
                            ColorFiltered(
                              colorFilter: const ColorFilter.mode(
                                  Colors.black, BlendMode.srcIn),
                              child: SvgPicture.asset(AlgAssets.bigBus),
                            ),
                            Styles.wGap5,
                            Text(
                              "Bus 025",
                              style: Styles.fontStyle12
                                  .copyWith(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Styles.wGap30,
                      Container(
                        height: 28.w,
                        width: 92.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Styles.cF5F5F5,
                        ),
                        child: Row(
                          children: [
                            Styles.wGap5,
                            Icon(
                              Icons.check,
                              color: Styles.c1F1F1F,
                              size: 20.sp,
                            ),
                            Styles.wGap5,
                            Text(
                              "Verified",
                              style: Styles.fontStyle12
                                  .copyWith(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Styles.wGap10,
                      Styles.wGap10,
                      Styles.wGap10,
                      Container(
                        height: 28.w,
                        width: 144.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Styles.cF5F5F5,
                        ),
                        child: Row(
                          children: [
                            Styles.wGap5,
                            SvgPicture.asset(AlgAssets.ticket),
                            Styles.wGap5,
                            Text(
                              "Tickets Available",
                              style: Styles.fontStyle12
                                  .copyWith(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 170.h,
                  left: 20.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 48.w,
                        width: 152.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: Styles.cFFFFFF,
                            border: Border.all(
                              color: Styles.cEFEDED,
                              width: 2.w,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Styles.wGap10,
                            Text(
                              "Adult Ticket",
                              style: Styles.fontStyle14
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            Styles.wGap5,
                            ColorFiltered(
                              colorFilter: const ColorFilter.mode(
                                  Colors.black, BlendMode.srcIn),
                              child: SvgPicture.asset(AlgAssets.chevronDown),
                            ),
                            Styles.wGap5,
                          ],
                        ),
                      ),
                      Styles.wGap10,
                      Styles.wGap10,
                      SizedBox(
                          height: 48.w,
                          width: 214.w,
                          child: Button(
                              text: "Buy ₦1,100",
                              onPressed: () {
                                //{
                                // Navigator.of(context).push(

                                context.push(BuySingleTicketPage.routhName);
                                // MaterialPageRoute(
                                //   builder: (context) =>
                                //       const BuySingleTicketPage(),
                                // ),
                                //);
                              }))
                    ],
                  ),
                ),
                Positioned(
                    left: 20.w, top: 300.h, child: VerticalProgressWidget()),
                Positioned(
                  top: 250.h,
                  left: 20.w,
                  child: Row(
                    children: [
                      Container(
                          height: 28.w,
                          width: 28.w,
                          decoration: BoxDecoration(
                              color: Styles.cEFEDED,
                              borderRadius: BorderRadius.circular(100.r)),
                          child: SvgPicture.asset(AlgAssets.map)),
                      Styles.wGap10,
                      Text(
                        "Previous Tickets",
                        style: Styles.fontStyle14.copyWith(
                            color: Styles.c9D9D9D, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 290.h,
                  left: 70.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Current Location",
                            style: Styles.fontStyle16.copyWith(
                                color: Styles.c1F1F1F,
                                fontWeight: FontWeight.w600),
                          ),
                          Styles.hGap2,
                          Text(
                            "Nathan Ogoh, Jabi Abuja",
                            style: Styles.fontStyle14.copyWith(
                                color: Styles.c1F1F1F,
                                fontWeight: FontWeight.w400),
                          ),
                          Styles.hGap5,
                          const Divider(
                            color: Styles.cEFEDED,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 370.h,
                  left: 70.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Walk 242 meters",
                                style: Styles.fontStyle16.copyWith(
                                    color: Styles.c1F1F1F,
                                    fontWeight: FontWeight.w600),
                              ),
                              Styles.hGap2,
                              Text(
                                "Take about 5 minutes",
                                style: Styles.fontStyle14.copyWith(
                                    color: Styles.c1F1F1F,
                                    fontWeight: FontWeight.w400),
                              ),
                              // Styles.hGap5,
                              // const Divider(
                              //   color: Styles.cEFEDED,)
                            ],
                          ),
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap20,
                          Styles.wGap5,
                          Text(
                            "14:05",
                            style: Styles.fontStyle20
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Styles.hGap5,
                      Divider(
                        color: Styles.cFAFAFAdu,
                        thickness: 2.sp,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 460.h,
                  left: 70.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nathan Ogoh Bus Stop",
                                style: Styles.fontStyle16.copyWith(
                                    color: Styles.c1F1F1F,
                                    fontWeight: FontWeight.w600),
                              ),
                              Styles.hGap2,
                              Text(
                                "Nathan Ogoh St.",
                                style: Styles.fontStyle14.copyWith(
                                    color: Styles.c1F1F1F,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap20,
                          Styles.wGap5,
                          Text(
                            "14:11",
                            style: Styles.fontStyle20
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Styles.hGap5,
                      Divider(
                        color: Styles.cFAFAFAdu,
                        thickness: 2.sp,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 620.h,
                  left: 70.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lifecamp Bus Stop",
                                style: Styles.fontStyle16.copyWith(
                                    color: Styles.c1F1F1F,
                                    fontWeight: FontWeight.w600),
                              ),
                              Styles.hGap2,
                              Text(
                                "Obafemi Awolowo Way",
                                style: Styles.fontStyle14.copyWith(
                                    color: Styles.c1F1F1F,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap10,
                          Styles.wGap5,
                          Styles.wGap5,
                          Text(
                            "14:11",
                            style: Styles.fontStyle20
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Styles.hGap5,
                      Divider(
                        color: Styles.cFAFAFAdu,
                        thickness: 2.sp,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 710.h,
                  left: 70.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Walk 243 Metres",
                                style: Styles.fontStyle16.copyWith(
                                    color: Styles.c1F1F1F,
                                    fontWeight: FontWeight.w600),
                              ),
                              Styles.hGap2,
                              Text(
                                "Take about 5 minutes",
                                style: Styles.fontStyle14.copyWith(
                                    color: Styles.c1F1F1F,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap30,
                          Styles.wGap20,
                          Styles.wGap2,
                          Styles.wGap2,
                          Styles.wGap2,
                          Text(
                            "14:11",
                            style: Styles.fontStyle20
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Styles.hGap5,
                      Divider(
                        color: Styles.cFAFAFAdu,
                        thickness: 2.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Column(
            children: [
              Styles.hGap30,
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCollapsedContent() {
    return const Column(
      children: [
        // Styles.hGap,
      ],
    );
  }
}
