import 'package:flutter/material.dart';
import 'package:pokedex_app/src/widgets/pokemon_grid/pokemon_card.dart';

import '../../models/pokemon.dart';

class PokemonGrid extends StatelessWidget {
  const PokemonGrid({
    super.key,
    required this.pokemonList,
  });

  final List<Pokemon> pokemonList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemCount: pokemonList.length,
          itemBuilder: ((context, index) {
            return PokemonCard(
              pokemon: pokemonList[index],
            );
          })),
    );
  }
}
