import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';

class UserTypeOptionsSheet extends StatelessWidget {
  const UserTypeOptionsSheet(
      {super.key, required this.passengerWidget, required this.driverWidget});
  final Widget passengerWidget;
  final Widget driverWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      alignment: Alignment.center,
      child: Center(
        child: Container(
          margin: Styles.padH30,
          alignment: Alignment.center,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Styles.c1A1528,
          ),
          child: Column(
            children: [
              Styles.hGap15,
              passengerWidget,
              Styles.hGap15,
              driverWidget,
              Styles.hGap15,
            ],
          ),
        ),
      ),
    );
  }
}
