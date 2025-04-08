import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189.w,
      width: 382.w,
      decoration: BoxDecoration(
        color: Styles.c1F1F1F,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Styles.hGap20,

          Center(
            child: CustomPaint(
                painter: ChatBubblePainter(),
                child: Container(
                    height: 24.34.w,
                    width: 90.34.w,
                    margin: EdgeInsets.only(top: 15.h),
                    decoration: BoxDecoration(
                      color: Styles.secondaryColor,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(children: [
                      Center(
                        child: Text(
                          "149,344.09",
                          style: Styles.fontStyle12.copyWith(
                              color: Styles.cFFFFFF,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ]))),
          ),

          Padding(
            padding: Styles.padH30 + Styles.padV10,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                LinearProgressIndicator(
                  value: 0.5, // Example value, adjust according to your needs
                  backgroundColor: Styles.cFAFAFAdu,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                      Styles.secondaryColor),
                  minHeight: 10.h,
                ),
              ],
            ),
          ),
          // Amount Display
          Row(
            children: <Widget>[
              Styles.wGap20,
              Container(
                height: 41.w,
                width: 123.w,
                decoration: BoxDecoration(
                    color: Styles.c9D9D9D,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: Text(
                    '+₦132,300',
                    style: Styles.fontStyle14.copyWith(
                        color: Styles.cFFFFFF, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Styles.wGap10,
              Container(
                height: 41.w,
                width: 200.w,
                decoration: BoxDecoration(
                    color: Styles.c9D9D9D,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: Text(
                    '+₦17,044.09 Bonus',
                    style: Styles.fontStyle16.copyWith(
                        color: Styles.secondaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: Styles.padH20 + Styles.padV10,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility,
                      color: Styles.cFFFFFF,
                    )),
                Styles.wGap10,
                Text(
                  'Hide Amount',
                  style: Styles.fontStyle12.copyWith(
                    color: Styles.cFFFFFF,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubblePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Styles.secondaryColor;
    Path path = Path();

    path.moveTo(20, 20);
    path.lineTo(size.width - 20, 20);
    path.quadraticBezierTo(size.width, 20, size.width, 40);
    path.lineTo(size.width, size.height - 20);
    path.quadraticBezierTo(
        size.width, size.height, size.width - 20, size.height);
    path.lineTo(20, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - 20);
    path.lineTo(0, 40);
    path.quadraticBezierTo(0, 20, 20, 20);

    double centerX = size.width / 2;
    path.moveTo(centerX + 5, size.height);
    path.lineTo(centerX, size.height + 5);
    path.lineTo(centerX - 5, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}



  // Container(
                  //   height: 41.w,
                  //   width: 123.w,
                  //   decoration: BoxDecoration(
                  //       color: Styles.c9D9D9D,
                  //       borderRadius: BorderRadius.circular(8.r)),
                  //   child: Center(
                  //     child: Text(
                  //       '₦132,300',
                  //       style: Styles.fontStyle14.copyWith(
                  //           color: Styles.cFFFFFF, fontWeight: FontWeight.w600),
                  //     ),
                  //   ),
                  // ),

                    // Container(
              //   height: 41.w,
              //   width: 180.w,
              //   decoration: BoxDecoration(
              //       color: Styles.c9D9D9D,
              //       borderRadius: BorderRadius.circular(8.r)),
              //   child: Center(
              //     child: Text(
              //       '+₦17,044.09 Bonus',
              //       style: Styles.fontStyle16.copyWith(
              //           color: Styles.secondaryColor,
              //           fontWeight: FontWeight.w600),
              //     ),
              //   ),
              // ),

                  // Text(
                  //   'Hide Amount',
                  //   style: Styles.fontStyle12.copyWith(
                  //     color: Styles.cFFFFFF,
                  //   ),
                  // ),