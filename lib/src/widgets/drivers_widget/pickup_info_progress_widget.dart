import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PickupInfoProgressWidget extends StatefulWidget {
  const PickupInfoProgressWidget({super.key});

  @override
  State createState() => _PickupInfoProgressWidgetState();
}

class _PickupInfoProgressWidgetState extends State {
  List svgPaths = [
    AlgAssets.roadCrossing,
    AlgAssets.bigBus,
    AlgAssets.roadCrossing,
  ];

  @override
  Widget build(BuildContext context) {
    // Calculate dimensions
    final pointWidths = [26.w, 26.w, 26.w, 15.w];
    final totalPointsWidth = pointWidths.reduce((a, b) => a + b);
    final totalGapWidth = 218.w - totalPointsWidth;
    final singleGapWidth = totalGapWidth / 3;

    return SizedBox(
      width: 218.w,
      height: 30.3.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
  
          Positioned(
            left: 13.w, 
            child: SizedBox(
              width: 218.w -
                  26.w, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildLineSegment(Styles.c1A1528,
                      width: singleGapWidth + 13.w,
                      isDashed: true), // + half of point width
                  buildLineSegment(Styles.c1F1F1F, width: singleGapWidth),
                  buildLineSegment(Styles.c1A1528,
                      width: singleGapWidth + 13.w,
                      isDashed: true), // + half of point width
                ],
              ),
            ),
          ),
          // Progress points
          SizedBox(
            width: 218.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                return index < 3
                    ? Container(
                        width: 26.w,
                        height: 26.w,
                        decoration: BoxDecoration(
                          color: index == 1 ? Styles.c1F1F1F : Styles.cF5F5F5,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            svgPaths[index],
                            width: 14.w,
                            height: 14.w,
                          ),
                        ),
                      )
                    : Container(
                        width: 15.w,
                        height: 15.w,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(3.h),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            margin: EdgeInsets.all(3.h),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLineSegment(Color color,
      {bool isDashed = false, required double width}) {
    return SizedBox(
      width: width,
      child: isDashed
          ? CustomPaint(
              size: Size(width, 2.h),
              painter: DashedLinePainter(
                color: color,
                dashWidth: 5.w,
                dashSpacing: 1.w,
                strokeWidth: 1.h,
              ),
            )
          : Container(height: 2.h, color: color),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashSpacing;
  final double strokeWidth;

  DashedLinePainter({
    required this.color,
    this.dashWidth = 2.0,
    this.dashSpacing = 3.0,
    this.strokeWidth = 2.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth;

    double startX = 0;
    while (startX < size.width) {
      final double endX = startX + dashWidth;
      canvas.drawLine(Offset(startX, size.height / 2),
          Offset(endX.clamp(0, size.width), size.height / 2), paint);
      startX += dashWidth + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


// import 'package:along/src/style/style.dart';
// import 'package:along/src/utils/assets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class PickupInfoProgressWidget extends StatefulWidget {
//   const PickupInfoProgressWidget({super.key});

//   @override
//   State<PickupInfoProgressWidget> createState() =>
//       _PickupInfoProgressWidgetState();
// }

// class _PickupInfoProgressWidgetState extends State<PickupInfoProgressWidget> {
//   List<String> svgPaths = [
//     AlgAssets.roadCrossing,
//     AlgAssets.bigBus,
//     AlgAssets.roadCrossing,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 218.w,
//       height: 30.3.w,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           SizedBox(
//             width: 128.w, // Total width for line segments
//             child: Row(
//               children: [
//                 buildLineSegment(Styles.c1A1528, width: 25.w, isDashed: true),
//                 buildLineSegment(Styles.c1F1F1F, width: 78.w),
//                 buildLineSegment(Styles.c1A1528, width: 25.w, isDashed: true),
//               ],
//             ),
//           ),
//           SizedBox(
//             width: 218.w, // Match line container width
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: List.generate(4, (index) {
//                 return index < 3
//                     ? Container(
//                         width: 26.w,
//                         height: 26.w,
//                         decoration: BoxDecoration(
//                           color: index == 1 ? Styles.c1F1F1F : Styles.cF5F5F5,
//                           borderRadius: BorderRadius.circular(10.r),
//                         ),
//                         child: Center(
//                           child: SvgPicture.asset(
//                             svgPaths[index],
//                             width: 14.w,
//                             height: 14.w,
//                           ),
//                         ),
//                       )
//                     : Container(
//                         width: 15.w,
//                         height: 15.w,
//                         decoration: const BoxDecoration(
//                           color: Colors.black,
//                           shape: BoxShape.circle,
//                         ),
//                         child: Container(
//                           margin: EdgeInsets.all(3.h),
//                           decoration: const BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                           ),
//                           child: Container(
//                             margin: EdgeInsets.all(3.h),
//                             decoration: const BoxDecoration(
//                               color: Colors.black,
//                               shape: BoxShape.circle,
//                             ),
//                           ),
//                         ),
//                       );
//               }),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildLineSegment(Color color,
//       {bool isDashed = false, required double width}) {
//     return SizedBox(
//       width: width,
//       child: isDashed
//           ? CustomPaint(
//               size: Size(width, 2.h), // set your desired height
//               painter: DashedLinePainter(
//                 color: color,
//                 dashWidth: 5.w,
//                 dashSpacing: 1.w,
//                 strokeWidth: 1.h,
//               ),
//             )
//           : Container(height: 2.h, color: color),
//     );
//   }
// }

// class DashedLinePainter extends CustomPainter {
//   final Color color;
//   final double dashWidth;
//   final double dashSpacing;
//   final double strokeWidth;

//   DashedLinePainter({
//     required this.color,
//     this.dashWidth = 2.0,
//     this.dashSpacing = 3.0,
//     this.strokeWidth = 2.0,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = color
//       ..strokeWidth = strokeWidth;

//     double startX = 0;
//     // Draw horizontal dashes until we fill the width.
//     while (startX < size.width) {
//       final double endX = startX + dashWidth;
//       // Ensure we don’t overshoot the container.
//       canvas.drawLine(Offset(startX, size.height / 2),
//           Offset(endX.clamp(0, size.width), size.height / 2), paint);
//       startX += dashWidth + dashSpacing;
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }



// ////For furure purpose i will be using this container
// ///
//   //  Container(
//   //                     child: Container(
//   //                         width: 6.w,
//   //                         height: 6.w,
//   //                         decoration: BoxDecoration(
//   //                           color: Styles.cFFFFFF,
//   //                           shape: BoxShape.circle,
//   //                           border: Border.all(
//   //                             color: Styles.cFF000000,
//   //                             width: 3.h,
//   //                           ),
//   //                         ),
//   //                       ),
//   //           );



//   // ... rest of imports and class definition

// // @override
// // Widget build(BuildContext context) {
// //   return SizedBox(
// //     width: 326.w,
// //     height: 30.3.w,
// //     child: Stack(
// //       alignment: Alignment.center,
// //       children: [
// //         // Background line (unchanged)
// //         SizedBox(
// //           width: 367.w,
// //           child: Row(
// //             children: [
// //               Expanded(
// //                 child: Container(height: 4.h, color: Styles.secondaryColor),
// //               ),
// //               Expanded(
// //                 child: Container(height: 4.h, color: Styles.c1A1528),
// //               ),
// //             ],
// //           ),
// //         ),
// //         // Progress points with centered images
// //         SizedBox(
// //           width: 367.w,
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: List.generate(4, (index) {
// //               return index < 3
// //                   ? Container(
// //                       width: 26.w,
// //                       height: 26.w,
// //                       decoration: BoxDecoration(
// //                         color: index == 1 ? Styles.c1F1F1F : Styles.cF5F5F5,
// //                         borderRadius: BorderRadius.circular(10.r),
// //                       ),
// //                       child: Center(
// //                         child: SvgPicture.asset(
// //                           svgPaths[index],
// //                           width: 14.w,  // Reduced image size
// //                           height: 14.w, // Matches container proportions
// //                         ),
// //                       ),
// //                     )
// //                   : Container(
// //                       width: 15.w,
// //                       height: 15.w, // Fixed circular container
// //                       decoration: BoxDecoration(
// //                         color: Styles.cFFFFFF,
// //                         shape: BoxShape.circle,
// //                         border: Border.all(
// //                           color: Styles.secondaryColor,
// //                           width: 3.h,
// //                         ),
// //                       ),
// //                     );
// //             }),
// //           ),
// //         ),
// //       ],
// //     ),
// //   );
// // }