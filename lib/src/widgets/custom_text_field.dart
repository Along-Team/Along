import 'package:along/src/style/style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.validator,
      this.icon,
      this.suffixIcon,
      this.hintText,
      required this.controller});

  final FormFieldValidator<String>? validator;
  final String? hintText;
  final Widget? icon;
  final Widget? suffixIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Styles.fontStyle14.copyWith(color: Styles.c9D9D9D),
          prefixIcon: icon == null
              ? null
              : SizedBox(
                  width: 60,
                  child: Row(
                    children: [
                      Styles.wGap10,
                      icon!,
                      Styles.wGap10,
                      Container(
                        height: 50,
                        width: 2,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
          suffix: suffixIcon,
          fillColor: Styles.greyColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: Styles.borderRadiust16,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: Styles.borderRadiust16,
          )

          // focusedBorder: InputBorder.none,
          // border: InputBorder.none,
          ),
    );
    // return Container(
    //   height: 60,
    //   decoration: BoxDecoration(
    //     color: Styles.greyColor,
    //     borderRadius: Styles.borderRadiust16,
    //   ),
    //   child: Row(
    //     children: [
    //       Padding(
    //         padding: Styles.padH15,
    //         child: icon,
    //       ),
    //       Container(
    //         height: double.infinity,
    //         width: 2,
    //         color: Colors.white,
    //       ),
    //       Styles.wGap10,
    //       Expanded(
    //         child: TextFormField(
    //           validator: validator,
    //           controller: controller,
    //           decoration: InputDecoration(
    //             suffixIcon: suffixIcon,
    //             // focusedBorder: InputBorder.none,
    //             // border: InputBorder.none,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
//8227757695