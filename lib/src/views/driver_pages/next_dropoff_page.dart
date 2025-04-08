import 'package:along/src/style/style.dart';
import 'package:along/src/widgets/button.dart';
import 'package:along/src/widgets/drivers_widget/destination_progress_widget.dart';
import 'package:along/src/widgets/drivers_widget/next_drop_off_widget.dart';
import 'package:along/src/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextDropoffPage extends StatelessWidget {
  static const routhName = "/next-dropoff-page";
  const NextDropoffPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Styles.cF1F1F1,
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
            top: 200.h,
            left: 0.w,
            right: 0.w,
            child: const NextDropOffWidget(),
          ),
          Positioned(
            top: 850.h,
            left: 0.w,
            right: 0.w,
            child: Container(
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
                      child: Button(text: "See Details", onPressed: () {
                        
                      })),
                )),
          ),
        ],
      ),
    );
  }
}
