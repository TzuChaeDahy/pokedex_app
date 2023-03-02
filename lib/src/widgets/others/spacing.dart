import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double? customHeight;
  final double? customWidth;
  const Spacing({
    super.key,
    this.customHeight,
    this.customWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: customHeight,
      width: customWidth,
    );
  }
}
