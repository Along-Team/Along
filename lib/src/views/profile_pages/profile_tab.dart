import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/utils/extentions.dart';
import 'package:along/src/widgets/header.dart';
import 'package:along/src/widgets/profile_trip_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  static const routhName = "/profileTab";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            width: double.infinity,
            color: Styles.cFFCE48,
          ),
          const Header(
            bgColor: Styles.cFFCE48,
            padding: Styles.padH20,
          ),
          Container(
            height: size.height * 0.33,
            width: double.infinity,
            color: Styles.cFFCE48,
            child: Stack(
              children: [
                SvgPicture.asset(AlgAssets.path1),
                Positioned(right: 0, child: SvgPicture.asset(AlgAssets.path2)),
                Positioned(
                    bottom: 0,
                    left: 0,
                    child: SvgPicture.asset(AlgAssets.path3)),
                Positioned(
                    bottom: -20,
                    right: 0,
                    child: SvgPicture.asset(AlgAssets.path4)),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 175,
                        child: Stack(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 148,
                                  width: 148,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFFFF9F40),
                                        Color(0xFFFFA851),
                                        Color(0xFFFFC286),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: Container(
                                    height: 146,
                                    width: 146,
                                    padding: Styles.pad5,
                                    margin: Styles.pad5,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Styles.cFFCE48,
                                    ),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(AlgAssets.manImg)),
                                  ),
                                ),
                              ],
                            ),
                            //Edit btn

                            Positioned(
                                bottom: 12,
                                right: 50,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Styles.btnBlack,
                                    ),
                                    child: const Center(
                                        child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    )),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      5.heightBox,
                      Text(
                        "William",
                        style: Styles.fontStyle24.copyWith(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // >>> End of header widget
          40.heightBox,

          Padding(
            padding: Styles.padH20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My trips",
                      style: Styles.fontStyle24,
                    ),
                    Text(
                      "Get information of all previous trips",
                      style: Styles.fontStyle12.copyWith(color: Styles.c404040),
                    ),
                  ],
                ),
                40.widthBox,
                Container(
                  // height: 40,
                  width: 120.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Styles.c9D9D9D,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: Styles.pad10,
                  child: const Row(
                    children: [
                      Text("Recent"),
                      Styles.wGap5,
                      Icon(Icons.keyboard_arrow_down_outlined),
                    ],
                  ),
                )
              ],
            ),
          ),
          //Trip title end
          28.heightBox,
          Container(
            width: double.infinity,
            height: 85,
            padding: const EdgeInsets.only(left: 20, top: 0, bottom: 0),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                10.widthBox,
                ProfileTripTile(
                  hour: "14:05",
                  minutes: "23 min",
                  pickupStation: "Jabi Bus Stop",
                  onTap: () {},
                ),
                10.widthBox,
                ProfileTripTile(
                  hour: "14:05",
                  minutes: "23 min",
                  pickupStation: "Jabi Bus Stop",
                  onTap: () {},
                )
              ],
            ),
          ),
          20.heightBox,
          Padding(
            padding: Styles.padH20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your wallet top up",
                  style: Styles.fontStyle20,
                ),
                Text(
                  "Add money to your travel wallet, so that it can be used to pay for your tickets.",
                  style: Styles.fontStyle12.copyWith(
                    color: Styles.c404040,
                  ),
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AlgAssets.wallet2),
                        10.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Balance",
                              style: Styles.fontStyle12.copyWith(
                                color: Styles.c9D9D9D,
                              ),
                            ),
                            Text(
                              "NGN 4,900",
                              style: Styles.fontStyle20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AlgAssets.wallet1),
                        10.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Amount Used",
                              style: Styles.fontStyle12.copyWith(
                                color: Styles.c9D9D9D,
                              ),
                            ),
                            Text(
                              "NGN 1,100",
                              style: Styles.fontStyle20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


//Drop down Menu
//  SizedBox(
//                   width: 80.w,
//                   height: 20.h,
//                   child: DropdownMenu(
//                       width: 118.w,
//                       menuStyle: const MenuStyle(
//                         side: WidgetStatePropertyAll(BorderSide.none),
//                         shape: WidgetStatePropertyAll(RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(16)),
//                         )),
//                       ),
//                       inputDecorationTheme: InputDecorationTheme(
//                           border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(16),
//                       )),
//                       textStyle: Styles.fontStyle12,
//                       // menuHeight: 40.h,
//                       // label: Text("Recent", style: Styles.fontStyle12),
//                       initialSelection: "Recent",
//                       dropdownMenuEntries: ["Recent", "Yestarday", "Last week"]
//                           .map(
//                             (e) => DropdownMenuEntry(value: e, label: e),
//                           )
//                           .toList()),
//                 )