import 'package:flutter/material.dart';

class CustomFilterButton extends StatelessWidget {
  const CustomFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF575875),
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: IconButton(
        icon: const Icon(Icons.settings),
        iconSize: 20,
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }
}
