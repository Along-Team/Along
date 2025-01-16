import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';

///This is a kinda transparent button with a colored border
class Button2 extends StatelessWidget {
  const Button2(
      {super.key,
      required this.onPressed,
      required this.text,
      this.textColor = Colors.white});
  final VoidCallback onPressed;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: Styles.padH20,
        padding: Styles.padV15 + Styles.padH15,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Styles.c2A2537,
          ),
        ),
        child: Text(
          text,
          style: Styles.fontStyle14.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
