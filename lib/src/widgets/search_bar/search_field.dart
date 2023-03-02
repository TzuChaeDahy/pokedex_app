import 'package:flutter/material.dart';

import '../others/spacing.dart';
import 'custom_filter_button.dart';
import 'custom_text_input.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomTextInput(),
        ),
        Spacing(
          customWidth: 25,
        ),
        CustomFilterButton(),
      ],
    );
  }
}
