import 'package:along/src/style/style.dart';
import 'package:along/src/views/overview_pages/next_depatures_page.dart';
import 'package:along/src/widgets/overviwew_widgets/time_interval_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PreviousRoutesWidget extends StatelessWidget {
   final VoidCallback onClose;
  const PreviousRoutesWidget({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(),
      child: Container(
        height: 102.w,
        width: 342.w,
        decoration: const BoxDecoration(
          color: Styles.cFFFFFF,
          borderRadius: BorderRadius.zero,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20.h,
              left: 30.w,
              child: CustomPaint(
                size: Size(2.w, 60.h),
                painter: DashedRectPainter(color: Styles.cFAFAFAdu),
              ),
            ),
            Positioned(
                top: 25.h, left: 110.w, child: const TimeIntervalWidget()),
            Positioned(
              top: 20.h,
              left: 55.w,
              child: Row(
                children: [
                  Text(
                    "14:05",
                    style: Styles.fontStyle16
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Styles.wGap30,
                  Styles.wGap30,
                  Styles.wGap30,
                  Text(
                    "02:31pm",
                    style: Styles.fontStyle16
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50.h,
              left: 55.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pick Up",
                    style: Styles.fontStyle12.copyWith(
                        color: Styles.c9D9D9D, fontWeight: FontWeight.w500),
                  ),
                  Styles.hGap2,
                  Text(
                    "Nathan Ogoh",
                    style: Styles.fontStyle12.copyWith(
                        color: Styles.c404040, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Positioned(
              top: 50.h,
              left: 200.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bus Stop",
                    style: Styles.fontStyle12.copyWith(
                        color: Styles.c9D9D9D, fontWeight: FontWeight.w500),
                  ),
                  Styles.hGap2,
                  Text(
                    "Life Camp",
                    style: Styles.fontStyle12.copyWith(
                        color: Styles.c404040, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Positioned(
              top: 20.h,
              left: 290.w,
              child: Container(
                height: 62.w,
                width: 32.w,
                decoration: BoxDecoration(
                  color: Styles.c1A1528,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: IconButton(
                  onPressed: () {
                      onClose(); 
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NextDepaturesPage()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Styles.cFFFFFF,
                    size: 20.sp,
                  ),
                ),
              ),
            )
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
    final double cornerRadius = 10.r;
    final double notchRadius = 15.h;
    final double notchOffset = 30.w;

    path.moveTo(cornerRadius, 0);
    path.lineTo(notchOffset - notchRadius, 0);
    path.arcToPoint(
      Offset(notchOffset + notchRadius, 0),
      radius: Radius.circular(notchRadius),
      clockwise: false,
    );
    path.lineTo(size.width - cornerRadius, 0);
    path.arcToPoint(
      Offset(size.width, cornerRadius),
      radius: Radius.circular(cornerRadius),
    );
    path.lineTo(size.width, size.height - cornerRadius);
    path.arcToPoint(
      Offset(size.width - cornerRadius, size.height),
      radius: Radius.circular(cornerRadius),
    );
    path.lineTo(notchOffset + notchRadius, size.height);
    path.arcToPoint(
      Offset(notchOffset - notchRadius, size.height),
      radius: Radius.circular(notchRadius),
      clockwise: false,
    );
    path.lineTo(cornerRadius, size.height);
    path.arcToPoint(
      Offset(0, size.height - cornerRadius),
      radius: Radius.circular(cornerRadius),
    );
    path.lineTo(0, cornerRadius);
    path.arcToPoint(
      Offset(cornerRadius, 0),
      radius: Radius.circular(cornerRadius),
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class DashedRectPainter extends CustomPainter {
  final Color color;

  DashedRectPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = 2.0;

    const double dashHeight = 10.0;
    const double dashSpace = 10.0;

    double startY = 0;

    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + dashHeight),
        paint,
      );
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
