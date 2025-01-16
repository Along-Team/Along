import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTripTile extends StatelessWidget {
  const ProfileTripTile({
    super.key,
    required this.hour,
    required this.minutes,
    required this.pickupStation,
    required this.onTap,
  });
  final String hour;
  final String minutes;
  final String pickupStation;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 338.w,
          padding: Styles.pad10 + Styles.pad2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.0),
            //shadow
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 4.15,
                offset: const Offset(0, 0.61),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.11), //#00000001
                spreadRadius: 0,
                blurRadius: 9.98,
                offset: const Offset(0, 1.46),
              ),
            ],
          ),
          child: Row(
            children: [
              Image.asset(AlgAssets.smallMap),
              10.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        hour,
                        style: Styles.fontStyle14,
                      ),
                      6.widthBox,
                      Text(
                        minutes,
                        style: Styles.fontStyle12.copyWith(
                          color: Styles.c9D9D9D,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "From",
                        style: Styles.fontStyle12.copyWith(
                          color: Styles.c9D9D9D,
                        ),
                      ),
                      6.widthBox,
                      Text(
                        pickupStation,
                        style: Styles.fontStyle14,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: Styles.pad10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Styles.cFAFAFA,
                ),
                child: const Icon(
                  Icons.notifications_off_outlined,
                  color: Styles.c9D9D9D,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
