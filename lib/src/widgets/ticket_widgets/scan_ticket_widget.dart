import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TicketScanWidget extends StatelessWidget {
  final Color containerColor;
  final Color dashedLineColor;
  final Color qrCodeColor;
  final BlendMode qrCodeBlendMode;

  // Text Colors
  final Color timeColor;
  final Color durationColor;
  final Color busNumberTextColor;
  final Color locationLabelColor;
  final Color destinationLabelColor;
  final Color locationTextColor;
  final Color destinationTextColor;

  // Bottom Section Texts (nullable)
  final String? expiresOnLabel;
  final Color expiresOnLabelColor;
  final String? expiresOnTime;
  final Color expiresOnTimeColor;
  final String? paidWithLabel;
  final Color paidWithLabelColor;
  final String? paidWithAmount;
  final Color paidWithAmountColor;


  ///Destination
    final String startJourney;
    final String endJourney;

  const TicketScanWidget({
    super.key,
    required this.containerColor,
    required this.dashedLineColor,
    required this.qrCodeColor,
    this.qrCodeBlendMode = BlendMode.srcIn,
    required this.timeColor,
    required this.durationColor,
    required this.busNumberTextColor,
    required this.locationLabelColor,
    required this.destinationLabelColor,
    required this.locationTextColor,
    required this.destinationTextColor,
    this.expiresOnLabel,
    required this.expiresOnLabelColor,
    this.expiresOnTime,
    required this.expiresOnTimeColor,
    this.paidWithLabel,
    required this.paidWithLabelColor,
    this.paidWithAmount,
    required this.paidWithAmountColor,

    required this.startJourney,
    required this.endJourney
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(),
      child: Container(
        height: 483.w,
        width: 382.w,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.zero,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 160.h,
              left: 30.w,
              right: 30.w,
              child: DashedRect(
                width: double.infinity,
                height: 100.h,
                color: dashedLineColor,
              ),
            ),
            Positioned(
              top: 20.h,
              left: 30.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('14:02',
                              style: Styles.fontStyle24.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25.sp,
                                  color: timeColor)),
                        ],
                      ),
                      Padding(
                        padding: Styles.padH20,
                        child: Text('0h 23m',
                            style: Styles.fontStyle12
                                .copyWith(color: durationColor)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 20.h,
              right: 30.w,
              child: Container(
                padding: Styles.padH12 + Styles.padV6,
                decoration: BoxDecoration(
                  color: Styles.secondaryColor,
                  borderRadius: BorderRadius.circular(20.w),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.directions_bus,
                      size: 18.sp,
                      color: Styles.c1A1528,
                    ),
                    Styles.wGap5,
                    Text('026',
                        style: Styles.fontStyle12
                            .copyWith(color: busNumberTextColor)),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 70.h,
              left: 30.w,
              child: Text('Location',
                  style:
                      Styles.fontStyle12.copyWith(color: locationLabelColor)),
            ),
            Positioned(
              top: 70.h,
              right: 30.w,
              child: Text('Destination',
                  style: Styles.fontStyle12
                      .copyWith(color: destinationLabelColor)),
            ),
            Positioned(
              top: 91.h,
              right: 25.w,
              child: Row(
                children: [
                  Text( startJourney,
                      style: Styles.fontStyle16.copyWith(
                          fontWeight: FontWeight.w600,
                          color: locationTextColor)),
                  Styles.wGap20,
                  Text(
                    'To',
                    style:
                        Styles.fontStyle12.copyWith(color: locationTextColor),
                  ),
                  Styles.wGap30,
                  Text(  endJourney,
                      style: Styles.fontStyle16.copyWith(
                        fontWeight: FontWeight.w600,
                        color: destinationTextColor,
                      )),
                ],
              ),
            ),
            Positioned(
              top: 200.h,
              left: 30.w,
              right: 30.w,
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      children: [
                        ColorFiltered(
                          colorFilter:
                              ColorFilter.mode(qrCodeColor, qrCodeBlendMode),
                          child: SvgPicture.asset(
                            AlgAssets.qrcode,
                            height: 230.w,
                            width: 230.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (expiresOnLabel != null || expiresOnTime != null)
              Positioned(
                bottom: 10.h,
                left: 120.w,
                child: Row(
                  children: [
                    if (expiresOnLabel != null)
                      Text(
                        expiresOnLabel!,
                        style: Styles.fontStyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: expiresOnLabelColor),
                      ),
                    if (expiresOnLabel != null && expiresOnTime != null)
                      Styles.wGap20,
                    if (expiresOnTime != null)
                      Text(expiresOnTime!,
                          style: Styles.fontStyle20
                              .copyWith(color: expiresOnTimeColor)),
                  ],
                ),
              ),
            if (paidWithLabel != null || paidWithAmount != null)
              Positioned(
                bottom: 10.h,
                left: 10.w,
                child: Row(
                  children: [
                    if (paidWithLabel != null)
                      Text(
                        paidWithLabel!,
                        style: Styles.fontStyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: paidWithLabelColor),
                      ),
                    if (paidWithLabel != null) ...[
                      Styles.wGap30,
                      Styles.wGap30,
                      Styles.wGap30,
                      Styles.wGap30,
                      Styles.wGap30,
                    ],
                    if (paidWithAmount != null)
                      Text('₦1,100',
                          style: Styles.fontStyle20
                              .copyWith(color: paidWithAmountColor)),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Rest of the code remains the same (TicketClipper, DashedRect, DashedRectPainter)

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    final double inwardCurveRadius = 40.r;
    final double curveOffsetFromTop = 140.h;

    // Start at the top-left corner
    path.moveTo(inwardCurveRadius, 0);

    // Top-left corner curve
    path.cubicTo(
      0,
      0,
      0,
      inwardCurveRadius / 2,
      0,
      inwardCurveRadius,
    );

    // Left side vertical line up
    path.lineTo(0, curveOffsetFromTop);

    // Left side inward curve
    path.cubicTo(
      20.w,
      curveOffsetFromTop + 10.h,
      20.w, // Reduced from 30.w
      curveOffsetFromTop + 30.h,
      0,
      curveOffsetFromTop + 40.h,
    );

    // Continue downwards on the left
    path.lineTo(0, size.height - inwardCurveRadius);

    // Bottom-left corner curve
    path.cubicTo(
      0,
      size.height,
      inwardCurveRadius / 2,
      size.height,
      inwardCurveRadius,
      size.height,
    );

    // Bottom line
    path.lineTo(size.width - inwardCurveRadius, size.height);

    // Bottom-right corner curve
    path.cubicTo(
      size.width,
      size.height,
      size.width,
      size.height - inwardCurveRadius / 2,
      size.width,
      size.height - inwardCurveRadius,
    );

    // Right side vertical line
    path.lineTo(size.width, curveOffsetFromTop + 40.h);

    // Right side inward curve
    path.cubicTo(
      size.width - 20.w,
      curveOffsetFromTop + 30.h,
      size.width - 20.w,
      curveOffsetFromTop + 10.h,
      size.width,
      curveOffsetFromTop,
    );

    // Top-right corner curve
    path.lineTo(size.width, inwardCurveRadius);
    path.cubicTo(
      size.width,
      0,
      size.width - inwardCurveRadius / 2,
      0,
      size.width - inwardCurveRadius,
      0,
    );

    // Top line
    path.lineTo(inwardCurveRadius, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class DashedRect extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const DashedRect({
    super.key,
    required this.width,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: DashedRectPainter(color: color),
    );
  }
}

class DashedRectPainter extends CustomPainter {
  final Color color;

  DashedRectPainter({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = 3;

    const double dashWidth = 10;
    const double dashSpace = 10;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
