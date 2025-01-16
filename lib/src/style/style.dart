import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final class Styles {
  static const Color primaryColor = Color(0xFFffbe00); //ffbe00
  static const Color btnBlack = Color(0xFF1A1528); //ffbe00
  static const Color secondaryColor = Color(0xFFFF8811);
  static const Color greyColor = Color.fromARGB(255, 244, 244, 244);

  static const Color c795000 = Color(0xFF795000);
  static const Color c1A1528 = Color(0xFF1A1528);
  static const Color c2A2537 = Color(0xFF2A2537);
  static const Color cFFD89F = Color(0xFFFFD89F);
  static const Color cF1F1F1 = Color(0xFFF1F1F1);
  static const Color cFF8811 = Color(0xFFFF8811);
  static const Color cEFEDED = Color(0xFFEFEDED);
  static const Color cE5F2FE = Color(0xFFE5F2FE);
  static const Color c404040 = Color(0xFF404040);
  static const Color cFAFAFA = Color(0xFFFAFAFA); //rgba(250, 250, 250, 1)
  static const Color cFAFAFAdu =
      Color.fromRGBO(217, 217, 217, 0.529); //rgba(250, 250, 250, 1)
  static const Color c9D9D9D = Color(0xFF9D9D9D);
  static const Color cFFCE48 = Color(0xFFFFCE48);
  static const Color cFFF8F0 = Color(0xFFFFF8F0);

  ///Width size boxs
  static const wGap5 = SizedBox(width: 5);
  static const wGap10 = SizedBox(width: 10);
  static const wGap15 = SizedBox(width: 15);
  static const wGap20 = SizedBox(width: 20);
  static const wGap30 = SizedBox(width: 30);

  ///Height size boxs
  static const hGap10 = SizedBox(height: 10);
  static const hGap2 = SizedBox(height: 2);
  static const hGap1 = SizedBox(height: 1);
  static const hGap5 = SizedBox(height: 5);
  static const hGap15 = SizedBox(height: 15);
  static const hGap20 = SizedBox(height: 20);
  static const hGap30 = SizedBox(height: 30);

  ///Padding edge insets
  static const pad2 = EdgeInsets.all(2);
  static const pad5 = EdgeInsets.all(5);
  static const pad10 = EdgeInsets.all(10);
  static const pad8 = EdgeInsets.all(8);
  static const pad15 = EdgeInsets.all(15);
  static const pad20 = EdgeInsets.all(20);
  static const pad30 = EdgeInsets.all(30);

  ///Vertical
  static const padV10 = EdgeInsets.symmetric(vertical: 10);
  static const padV15 = EdgeInsets.symmetric(vertical: 15);
  static const padV20 = EdgeInsets.symmetric(vertical: 20);
  static const padV30 = EdgeInsets.symmetric(vertical: 30);

  ///Horizontal
  static const padH10 = EdgeInsets.symmetric(horizontal: 10);
  static const padH15 = EdgeInsets.symmetric(horizontal: 15);
  static const padH20 = EdgeInsets.symmetric(horizontal: 20);
  static const padH25 = EdgeInsets.symmetric(horizontal: 25);
  static const padH24 = EdgeInsets.symmetric(horizontal: 24);
  static const padH30 = EdgeInsets.symmetric(horizontal: 30);

  static final fontStyle48 = TextStyle(
    fontSize: 48.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );
  static final fontStyle32 = TextStyle(
    fontSize: 32.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );
  static final fontStyle28 = TextStyle(
    fontSize: 28.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );
  static final fontStyle24 = TextStyle(
    fontSize: 24.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );
  static final fontStyle20 = TextStyle(
    fontSize: 20.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );
  static final fontStyle21 = TextStyle(
    fontSize: 21.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );
  static final fontStyle16 = TextStyle(
      fontFamily: 'Inter', fontSize: 16.sp, fontWeight: FontWeight.w400);
  static final fontStyle14B = TextStyle(
      fontFamily: 'Inter', fontSize: 14.sp, fontWeight: FontWeight.w700);
  static final fontStyle14 = TextStyle(
      fontFamily: 'Inter',
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: Colors.black);
  static final fontStyle14_400 = TextStyle(
      fontFamily: 'Inter',
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: Colors.black);
  static final fontStyle12 = TextStyle(
      fontFamily: 'Inter',
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: Colors.black);
  static final fontStyle10 = TextStyle(
      fontFamily: 'Inter',
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      color: Colors.black);

  ///Border Radius
  static final borderRadiust16 = BorderRadius.circular(16.r);
}
