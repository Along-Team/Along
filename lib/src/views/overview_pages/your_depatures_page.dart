import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/header.dart';
import 'package:along/src/widgets/overviwew_widgets/depatures_destination_widget.dart';
import 'package:along/src/widgets/overviwew_widgets/your_depatures_buttomsheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourDepaturesPage extends StatefulWidget {
  static const routhName = "/your-depatures-page";
  const YourDepaturesPage({super.key});

  @override
  State<YourDepaturesPage> createState() => _YourDepaturesPageState();
}

class _YourDepaturesPageState extends State<YourDepaturesPage> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.cFFCE48,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(25.r))),
                child: const Header(
                  bgColor: Styles.cFFCE48,
                  padding: Styles.padH20,
                ),
              ),
              Container(
                height: size.height * 0.2.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Styles.cFFCE48,
                      Styles.cFFCE48,
                      Styles.cFFDB7A,
                      Styles.cFFE9AD,
                    ],
                  ),
                ),
                // child: Stack(
                //   children: [],
                // ),
              ),
            ],
          ),
          Positioned(
              top: 255.h,
              left: 0.w,
              right: 0.w,
              child: Container(
                height: 501.w,
                width: 430.w,
                decoration: const BoxDecoration(color: Colors.white),
                child: Image.asset(
                  AlgAssets.googleMap,
                  // height: 501.w,
                  // width: 430.w,
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
            top: 130.h,
            left: 25.w,
            child: DepaturesDestinationWidget(
              onToggleExpanded: (bool isExpanded) {
                setState(() {
                  _isExpanded = isExpanded;
                });
              },
            ),
          ),
          Positioned(
            bottom: 0,
            child: AnimatedContainer(
              height: _isExpanded ? 700.h : 170.h,
              width: 430.w,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              alignment: Alignment.bottomCenter,
              child: YourDepaturesButtomSheet(
                context: context,
                isExpanded: true,

                // isExpanded: _isExpanded,
                onToggle: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
