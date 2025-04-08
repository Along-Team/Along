import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/drivers_widget/destination_progress_widget.dart';
import 'package:along/src/widgets/header.dart';
import 'package:along/src/widgets/overviwew_widgets/see_bus_buttomsheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SeeBusPage extends StatefulWidget {
  static const routhName = "/see-bus-page";
  const SeeBusPage({super.key});

  @override
  State<SeeBusPage> createState() => _SeeBusPageState();
}

class _SeeBusPageState extends State<SeeBusPage> {
  bool _isExpanded = false;
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
            top: 105.h,
            child: Image.asset(AlgAssets.googleMap),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LifeCamp Bus Stop",
                      style: Styles.fontStyle20,
                    ),
                    Text(
                      "ARRIVING IN 15 MINUTES",
                      style: Styles.fontStyle12.copyWith(
                          fontWeight: FontWeight.w600, color: Styles.cFF000000),
                    ),
                  ],
                ),
                Styles.wGap10,
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedContainer(
              height: _isExpanded
                  ? MediaQuery.of(context).size.height * 0.8
                  : 210.w,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              child: SeeBusButtomSheetWidget(
                context: context,
                isExpanded: _isExpanded,
                onToggle: () {
                  setState(() => _isExpanded = !_isExpanded);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
