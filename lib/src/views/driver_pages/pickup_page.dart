import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/drivers_widget/destination_progress_widget.dart';
import 'package:along/src/widgets/drivers_widget/next_drop_off_widget.dart';
import 'package:along/src/widgets/drivers_widget/pickup_status.dart';
import 'package:along/src/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class PickupPage extends StatelessWidget {
  static const routhName = "/pick-up-page";
  const PickupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.12,
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
            ],
          ),
          Positioned(
            top: 150.h,
            left: 30.w,
            right: 30.w,
            child: const DestinationProgressWidget(),
          ),
          Positioned(
            top: 180.h,
            left: 30.w,
            right: 30.w,
            child: const PickupStatus(),
          ),
          Positioned(
              top: 840.h,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return Container(
                          height: MediaQuery.of(context).size.height *
                              0.80, 
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: const NextDropOffWidget());
                    },
                  );
                },
                child: Container(
                  height: 82.w,
                  width: 430.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Styles.cFFFFFF,
                        Styles.cFFFFFF,
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
                            child: Center(
                                child: SvgPicture.asset(AlgAssets.nextDropoff)),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
