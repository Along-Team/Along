import 'package:along/src/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconUrl,
    this.isOn,
  });
  final String title;
  final String subTitle;
  final String iconUrl;
  final bool? isOn;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Styles.cEFEDED,
          ),
        ),
      ),
      child: Column(
        children: [
          Styles.hGap10,
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Styles.c1A1528,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      iconUrl,
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
              ),
              Styles.wGap15,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Styles.fontStyle14B,
                  ),
                  Styles.hGap10,
                  Text(
                    subTitle,
                    style: Styles.fontStyle12,
                  ),
                  Styles.hGap10,
                ],
              ),
              const Spacer(),
              if (isOn == null) ...[
                const Icon(Icons.chevron_right),
              ] else ...[
                CupertinoSwitch(
                    activeColor: Styles.secondaryColor,
                    applyTheme: true,
                    value: isOn!,
                    onChanged: (value) {})
              ]
            ],
          ),
          Styles.hGap10,
        ],
      ),
    );
  }
}
