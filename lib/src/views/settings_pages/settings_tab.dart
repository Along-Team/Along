import 'package:along/src/style/style.dart';
import 'package:along/src/utils/assets.dart';
import 'package:along/src/widgets/header.dart';
import 'package:along/src/widgets/search.dart';
import 'package:along/src/widgets/settings_tile.dart';
import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});
  static const routhName = "/settingsTab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: Styles.pad20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(
                  bgColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                Styles.hGap30,
                Text(
                  "Settings",
                  style: Styles.fontStyle24,
                ),
                Styles.hGap30,
                const SearchWidget(query: "query"),
                Styles.hGap30,
                Text(
                  "General",
                  style: Styles.fontStyle14B.copyWith(
                    color: Styles.c9D9D9D,
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Styles.cEFEDED,
                ),
                const SettingsTile(
                  title: "My Addresses",
                  subTitle: "Save your important addresses for later.",
                  iconUrl: AlgAssets.star,
                ),
                const SettingsTile(
                  title: "Payment Methods",
                  subTitle: "Set your payment preferences.",
                  iconUrl: AlgAssets.creditCard,
                ),
                Styles.hGap30,
                Text(
                  "Your Data",
                  style: Styles.fontStyle14B.copyWith(
                    color: Styles.c9D9D9D,
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Styles.cEFEDED,
                ),
                const SettingsTile(
                  title: "My Addresses",
                  subTitle: "Save your important addresses for later.",
                  iconUrl: AlgAssets.lock,
                ),
                const SettingsTile(
                  title: "Notifications",
                  subTitle: "Set app notification preferences.",
                  iconUrl: AlgAssets.map2,
                  isOn: true,
                ),
                const SettingsTile(
                  title: "Bus departure notification",
                  subTitle: "Get notified of bus departure.",
                  iconUrl: AlgAssets.signal,
                  isOn: true,
                ),
                const SettingsTile(
                  title: "Read privacy and polices",
                  subTitle:
                      "Click here to learn more about our privacy policy.",
                  iconUrl: AlgAssets.map2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
