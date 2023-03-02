import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  final String pokemonUrl;
  final String pokemonName;
  final int pokemonID;

  const PokemonCard({
    super.key,
    required this.pokemonUrl,
    required this.pokemonName,
    required this.pokemonID,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        color: Colors.green[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              pokemonUrl,
            ),
            Column(
              children: [
                Text(
                  pokemonName,
                  style: const TextStyle(
                    color: Color(0xFF575875),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "$pokemonID",
                  style: const TextStyle(
                    color: Color(0xFF575875),
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
