import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/drivers_widget/end_trip_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TripSuccessPage extends StatelessWidget {
  static const routhName = "/trip-succes-page";

  const TripSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.cFFFFFF,
      appBar: AppBar(
        backgroundColor: Styles.cFFFFFF,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Navigator.pop()
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Styles.hGap30,
          Styles.hGap30,
          Styles.hGap30,
          Styles.hGap20,
          SvgPicture.asset(
            AlgAssets.successIcon,
            height: 110.59.w,
            width: 110.59.w,
          ),
          Styles.hGap20,
          Text(
            "Along Trip Ended",
            style: Styles.fontStyle20.copyWith(color: Styles.cFF000000),
          ),
          Styles.hGap5,
          Text(
            "End of trip summary ticket,sales and",
            style: Styles.fontStyle16.copyWith(color: Styles.c9E9E9E),
          ),
          Text(
            "bonuses",
            style: Styles.fontStyle16.copyWith(color: Styles.c9E9E9E),
          ),
          Styles.hGap30,
          const Center(child: EndTripDetailsWidget()),
          // const PickupInfoOverlayportal()
        ],
      ),
    );
  }
}
