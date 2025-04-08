import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DepaturesDestinationWidget extends StatefulWidget {
  final Function onToggleExpanded;

  const DepaturesDestinationWidget({super.key, required this.onToggleExpanded});

  @override
  State<DepaturesDestinationWidget> createState() =>
      _DepaturesDestinationWidgetState();
}

class _DepaturesDestinationWidgetState
    extends State<DepaturesDestinationWidget> {
  bool _isCancelIconVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 88.h,
        width: 382.w,
        decoration: BoxDecoration(
            color: Styles.c1A1528, borderRadius: BorderRadius.circular(28.r)),
        child: Stack(
          children: [
            Positioned(
              top: 20.h,
              left: 30.w,
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
                            "Destination",
                            style: Styles.fontStyle14.copyWith(
                                color: Styles.cFFFFFF,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Nile University, Lifecamp Roundabout",
                            style: Styles.fontStyle14.copyWith(
                                color: Styles.c9D9D9D,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 20.h,
              left: 320.w,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40.w,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: Styles.cx4DF1F1F1,
                        borderRadius: BorderRadius.circular(16.r)),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isCancelIconVisible = !_isCancelIconVisible;
                          });
                          widget.onToggleExpanded(_isCancelIconVisible);
                        },
                        child: _isCancelIconVisible
                            ? SvgPicture.asset(
                                AlgAssets.cancelIcon,
                                height: 12.h,
                                width: 12.w,
                              )
                            : Icon(
                                Icons.open_in_full,
                                size: 15.h,
                                color: Styles.cFFFFFF,
                              ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
