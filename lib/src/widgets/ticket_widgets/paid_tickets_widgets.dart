import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaidTicketsWidgets extends StatelessWidget {
  const PaidTicketsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(),
      child: Container(
        height: 142.w,
        width: 382.w,
        decoration: BoxDecoration(
          color: Styles.cFAFAFAdu,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          children: [
            // Dashed line
            Positioned(
              top: 95.h,
              left: 30.w,
              right: 30.w,
              child: DashedRect(
                width: double.infinity,
                height: 100.h,
                color: Colors.white,
              ),
            ),
            // Time and duration
            Positioned(
              top: 35.h,
              left: 30.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('09:12',
                              style: Styles.fontStyle24.copyWith(
                                  color: Styles.c404040,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21.sp)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Positioned(
              left: 120.w,
              top: 40.h,
              child: Text('Monday, July 29',
                  style: Styles.fontStyle12.copyWith(
                      color: Styles.c404040, fontWeight: FontWeight.w500)),
            ),

            Positioned(
              top: 15.h,
              right: 30.w,
              child: Container(
                height: 48.w,
                width: 30.w,
                //padding: Styles.padH12 + Styles.padV6,
                decoration: BoxDecoration(
                  color: Styles.c404040,
                  borderRadius: BorderRadius.circular(20.w),
                ),
                child: Column(
                  children: [
                    Styles.hGap5,
                    Icon(
                      Icons.directions_bus,
                      size: 18.sp,
                      color: Styles.cFFFFFF,
                    ),
                    Styles.wGap5,
                    Text('026',
                        style:
                            Styles.fontStyle12.copyWith(color: Styles.cFFFFFF)),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 10.h,
              left: 30.w,
              child: Text('Takeoff',
                  style: Styles.fontStyle12.copyWith(
                      color: Styles.c404040, fontWeight: FontWeight.w700)),
            ),
            Positioned(
              top: 70.h,
              right: 30.w,
              child: Text('Destination',
                  style: Styles.fontStyle12.copyWith(color: Styles.c404040)),
            ),

            Positioned(
              bottom: 10.h,
              left: 20.w,
              right: 20.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price with Travel Card',
                    style: Styles.fontStyle14.copyWith(color: Styles.c404040),
                  ),
                  Styles.wGap30,
                  Styles.wGap30,
                  Styles.wGap30,
                  Text('₦1,100',
                      style:
                          Styles.fontStyle20.copyWith(color: Styles.c404040)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    final double inwardCurveRadius = 5.r;
    final double curveOffsetFromTop = 80.h;

    // Start at the top, offset to allow for a top-left curve.
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

    // Left side vertical line down to the start of the inward curve.
    path.lineTo(0, curveOffsetFromTop);

    // Left side inward curve (mirrored to match the right side)
    path.cubicTo(
      20.w,
      curveOffsetFromTop + 10.h,
      10.w,
      curveOffsetFromTop + 20.h,
      0,
      curveOffsetFromTop + 25.h,
    );

    // Continue down the left side
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

    // Bottom line across the ticket.
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

    // Right side vertical line up to the start of the inward curve.
    path.lineTo(size.width, curveOffsetFromTop + 25.h);

    // Right side inward curve (as originally provided)
    path.cubicTo(
      size.width - 10.w,
      curveOffsetFromTop + 20.h,
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
      ..strokeWidth = 2;

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
