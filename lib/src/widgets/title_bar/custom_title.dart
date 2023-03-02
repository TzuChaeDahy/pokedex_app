import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Pokedex",
      style: TextStyle(fontSize: 38, fontWeight: FontWeight.w900),
    );
  }
}
