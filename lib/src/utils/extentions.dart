import 'package:flutter/material.dart';

extension UtilWidgets on int {
  SizedBox get heightBox => SizedBox(height: toDouble());

  SizedBox get widthBox => SizedBox(width: toDouble());
}
