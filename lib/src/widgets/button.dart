import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    this.isLoading = false,
    this.btnColor = Styles.btnBlack,
    this.textColor = Colors.white,
    this.height = 60,
    required this.onPressed,
    this.isOutlined = false,
    this.textWidget,
  });

  const Button.outlined({
    super.key,
    required this.text,
    this.isLoading = false,
    this.btnColor = Colors.transparent,
    this.textColor = Styles.btnBlack,
    this.height = 60,
    this.isOutlined = true,
    required this.onPressed,
    this.textWidget,
  });

  final String text;

  ///default -> false
  final bool isLoading;
  final Color btnColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double height;
  final bool isOutlined;
  final Widget? textWidget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(16.r),
          border: isOutlined ? Border.all(color: Styles.cEFEDED) : null,
        ),
        child: isLoading
            ? const CircularProgressIndicator()
            : textWidget ??
                Text(
                  text,
                  style: Styles.fontStyle14B.copyWith(color: textColor),
                ),
      ),
    );
  }
}
