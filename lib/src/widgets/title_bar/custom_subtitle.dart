import 'package:flutter/material.dart';

class CustomSubtitle extends StatelessWidget {
  const CustomSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Search for a Pokemon by name or using its National Pokedex Number.",
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }
}
