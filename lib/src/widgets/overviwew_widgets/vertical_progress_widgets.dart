import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerticalProgressWidget extends StatelessWidget {
  final List<bool> isDashed = [true, true, false, false, true, true];
  final double totalHeight = 500.h;

  VerticalProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pointHeight = 26.h;
    final lineHeight = (totalHeight - 7 * pointHeight) / 6;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          buildProgressPoint(0),
          buildLine(0, lineHeight),
          buildProgressPoint(1),
          buildLine(1, lineHeight),
          buildProgressPoint(2),
          buildLine(2, lineHeight),
          buildProgressPoint(3),
          buildLine(3, lineHeight),
          buildProgressPoint(4),
          buildLine(4, lineHeight),
          buildProgressPoint(5),
          buildLine(5, lineHeight),
          buildProgressPoint(6),
        ],
      ),
    );
  }

  Widget buildLine(int index, double height) {
    return SizedBox(
      height: height,
      child: isDashed[index]
          ? CustomPaint(
              painter: DashedVerticalLinePainter(
                color: Styles.c9D9D9D,
                dashHeight: 2.h,
                dashSpacing: 5.h,
                strokeWidth: 2.h,
              ),
            )
          : const VerticalSolidLine(color: Styles.c1F1F1F),
    );
  }

  Widget buildProgressPoint(int index) {
    switch (index) {
      case 0:
        return const IconPoint(AlgAssets.roadCrossing);
      case 1:
        return const IconPoint(AlgAssets.bigBus);
      case 2:
        return const LabeledPoint(AlgAssets.roadCrossing, "L");
      case 3:
        return const CircularPoint();
      case 4:
        return const LabeledPoint(AlgAssets.roadCrossing, "L");
      case 5:
        return const IconPoint(AlgAssets.bigBus);
      case 6:
        return const CircularPoint(isLast: true);
      default:
        return Container();
    }
  }
}

class IconPoint extends StatelessWidget {
  final String iconPath;

  const IconPoint(this.iconPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 26.w,
      height: 26.h,
      decoration: BoxDecoration(
        color: Styles.c1F1F1F,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
          child: ColorFiltered(
        colorFilter: const ColorFilter.mode(Styles.cFFFFFF, BlendMode.srcIn),
        child: SvgPicture.asset(
          iconPath,
          width: 20.w,
          height: 14.h,
        ),
      )),
    );
  }
}

class LabeledPoint extends StatelessWidget {
  final String iconPath;
  final String label;

  const LabeledPoint(this.iconPath, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.w,
      width: 26.w,
      decoration: BoxDecoration(
        color: Styles.c1F1F1F,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorFiltered(
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            child: SvgPicture.asset(
              iconPath,
              width: 20.w,
              height: 20.h,
            ),
          ),
          Styles.hGap2,
          Text(
            label,
            style: Styles.fontStyle12.copyWith(color: Styles.cFFFFFF),
          ),
        ],
      ),
    );
  }
}

class CircularPoint extends StatelessWidget {
  final bool isLast;

  const CircularPoint({super.key, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.w,
      height: 15.h,
      decoration: BoxDecoration(
        color: isLast ? Styles.cFF8811 : Styles.c1A1528,
        shape: BoxShape.circle,
      ),
      child: isLast
          ? Container(
              margin: EdgeInsets.all(3.w),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            )
          : Container(
              margin: EdgeInsets.all(3.w),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Container(
                margin: EdgeInsets.all(2.w),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
    );
  }
}

class DashedVerticalLinePainter extends CustomPainter {
  final Color color;
  final double dashHeight;
  final double dashSpacing;
  final double strokeWidth;

  DashedVerticalLinePainter({
    required this.color,
    this.dashHeight = 5,
    this.dashSpacing = 5,
    this.strokeWidth = 1,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth;

    double startY = 0;
    while (startY < size.height) {
      final endY = startY + dashHeight;
      canvas.drawLine(
        Offset(size.width / 2, startY),
        Offset(size.width / 2, endY),
        paint,
      );
      startY += dashHeight + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class VerticalSolidLine extends StatelessWidget {
  final Color color;

  const VerticalSolidLine({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 2.w,
        color: color,
      ),
    );
  }
}
