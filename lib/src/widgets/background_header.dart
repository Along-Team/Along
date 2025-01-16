import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundHeader extends StatelessWidget {
  const BackgroundHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Styles.cFFCE48,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.r),
          )),
      child: Stack(
        children: [
          // SvgPicture.asset(AlgAssets.path1),
          Positioned(
            top: -20,
            right: 0,
            child: SvgPicture.asset(AlgAssets.path2),
          ),
          Positioned(
            top: -40,
            right: 80.0,
            child: SvgPicture.asset(AlgAssets.path3),
          ),
          Positioned(
            bottom: -30,
            right: -15,
            child: RotatedBox(
              quarterTurns: 45,
              child: SvgPicture.asset(AlgAssets.path4),
            ),
          ),
        ],
      ),
    );
  }
}
