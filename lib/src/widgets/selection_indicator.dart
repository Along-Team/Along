import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';

class SelectionIndicator extends StatelessWidget {
  const SelectionIndicator({super.key, this.isSelected = false});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSelected ? 20 : 12,
      width: 30,
      decoration: BoxDecoration(
        color: isSelected ? Styles.secondaryColor : Styles.greyColor,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: isSelected ? Styles.cFFD89F : Colors.transparent,
          width: 5,
        ),
      ),
    );
  }
}
