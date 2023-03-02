import 'package:flutter/material.dart';

import '../others/spacing.dart';
import 'custom_subtitle.dart';
import 'custom_title.dart';

class InitialBar extends StatelessWidget {
  const InitialBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomTitle(),
        Spacing(
          customHeight: 15,
        ),
        CustomSubtitle(),
      ],
    );
  }
}
