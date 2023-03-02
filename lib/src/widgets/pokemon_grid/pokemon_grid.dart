import 'package:flutter/material.dart';
import 'package:pokedex_app/src/widgets/pokemon_grid/pokemon_card.dart';

class PokemonGrid extends StatelessWidget {
  const PokemonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        crossAxisCount: 2,
        children: List.generate(5, (index) {
          return PokemonCard(
            pokemonUrl: "Pokemon Image",
            pokemonName: "Bulbasaur",
            pokemonID: index,
          );
        }),
      ),
    );
  }
}
