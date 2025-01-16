import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    this.bgColor = Styles.cFFCE48,
    required this.padding,
  });
  final Color bgColor;
  final EdgeInsets padding; 

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      height: 65,
      width: double.infinity,
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                color: Styles.cFFF8F0,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Icon(Icons.chevron_left),
              ),
            ),
            Styles.wGap15,
            Image.asset(
              AlgAssets.smallLogo,
              height: 30,
            ),
            const Spacer(),
            SvgPicture.asset(AlgAssets.notifications),
            Styles.wGap15,
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(AlgAssets.manImg, height: 40, width: 40),
            ),
          ],
        ),
      ),
    );
  }
}
