import 'package:along/src/utils/extentions/on_int.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

extension ContextExt on BuildContext {
  void showToast({
    required String title,
    String? content,
    ToastificationType type = ToastificationType.info,
    int seconds = 4,
    bool showProgressBar = true,
  }) {
    toastification.show(
      context: this,
      type: type,
      style: ToastificationStyle.flatColored,
      title: Text(title, maxLines: 3),
      description: content != null ? Text(content) : null,
      alignment: Alignment.topCenter,
      //showProgressBar: showProgressBar,
      showProgressBar: false,
      autoCloseDuration: 4.seconds,
      animationBuilder:
          (BuildContext context, animation, Alignment alignment, Widget child) {
        return ScaleTransition(scale: animation, child: child);
      },
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: highModeShadow,
    );
  }
}
