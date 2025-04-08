import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveTicketWidget extends StatelessWidget {
  const ActiveTicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(),
      child: Container(
        height: 190.w,
        width: 382.w,
        decoration: const BoxDecoration(
          color: Styles.c1F1F1F,
          borderRadius: BorderRadius.zero,
        ),
        child: Stack(
          children: [
            // Dashed line
            Positioned(
              top: 120.h,
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
                                  color: Styles.cFFFFFF,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 21.sp)),
                        ],
                      ),
                      Padding(
                        padding: Styles.padH20,
                        child: Text('0h 23m',
                            style: Styles.fontStyle12
                                .copyWith(color: Styles.cFFFFFF)),
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
                    Text('026', style: Styles.fontStyle12),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 70.h,
              left: 30.w,
              child: Text('Location',
                  style: Styles.fontStyle12.copyWith(color: Styles.cFFFFFF)),
            ),
            Positioned(
              top: 70.h,
              right: 30.w,
              child: Text('Destination',
                  style: Styles.fontStyle12.copyWith(color: Styles.cFFFFFF)),
            ),

            Positioned(
              top: 91.h,
              right: 25.w,
              child: Row(
                children: [
                  // Styles.wGap5,
                  Text('Jabi Bus Stop',
                      style:
                          Styles.fontStyle16.copyWith(color: Styles.cFFFFFF)),
                  Styles.wGap20,
                  Text(
                    'To',
                    style: Styles.fontStyle12.copyWith(color: Styles.cFFFFFF),
                  ),
                  Styles.wGap30,
                  Text('Lifecamp Bus Stop',
                      style:
                          Styles.fontStyle16.copyWith(color: Styles.cFFFFFF)),
                ],
              ),
            ),

            Positioned(
              bottom: 10.h,
              left: 20.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price with Travel Card',
                    style: Styles.fontStyle12.copyWith(color: Styles.cFFFFFF),
                  ),
                  Styles.wGap30,
                  Styles.wGap30,
                  Styles.wGap30,
                  Styles.wGap30,
                  Text('₦1,100',
                      style:
                          Styles.fontStyle20.copyWith(color: Styles.cFFFFFF)),
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
    final double inwardCurveRadius = 40.r;
    final double curveOffsetFromTop = 100.h;

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
