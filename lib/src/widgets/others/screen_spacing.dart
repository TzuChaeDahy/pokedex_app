import 'package:flutter/material.dart';

class ScreenSpacing extends StatelessWidget {
  final List<Widget> children;
  const ScreenSpacing({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        right: 20,
        left: 20,
      ),
      child: Column(
        children: children,
      ),
    );
  }
}
