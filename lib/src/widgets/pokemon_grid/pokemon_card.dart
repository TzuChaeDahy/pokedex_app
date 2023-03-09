import 'package:flutter/material.dart';
import 'package:capitalize/capitalize.dart';

import 'package:pokedex_app/src/colors/colors.dart';
import '../../models/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  PokemonCard({
    super.key,
    required this.pokemon,
  });

  final IsCapitalize isCapitalize = IsCapitalize();

  Color? choosePokemonBackground(Pokemon pokemon) {
    Color? chosenColor;
    switch (pokemon.pokemonMainType) {
      case "grass":
        chosenColor = grassColor;
        break;
      case "poison":
        chosenColor = poisonColor;
        break;
      case "fire":
        chosenColor = fireColor;
        break;
      case "water":
        chosenColor = waterColor;
        break;
      case "bug":
        chosenColor = bugColor;
        break;
      case "normal":
        chosenColor = normalColor;
        break;
      case "electric":
        chosenColor = electricColor;
        break;
      case "ground":
        chosenColor = groundColor;
        break;
      case "fairy":
        chosenColor = fairyColor;
        break;
      case "psychic":
        chosenColor = psychicColor;
        break;
      case "fighting":
        chosenColor = fightingColor;
        break;
      case "rock":
        chosenColor = rockColor;
        break;
      case "ghost":
        chosenColor = ghostColor;
        break;
      case "ice":
        chosenColor = iceColor;
        break;
      case "dragon":
        chosenColor = dragonColor;
        break;
    }
    return chosenColor;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        color: choosePokemonBackground(pokemon),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              pokemon.pokemonUrl,
              height: 90,
            ),
            Column(
              children: [
                Text(
                  isCapitalize.capitalizeAllWord(value: pokemon.pokemonName),
                  style: const TextStyle(
                    color: Color(0xFF575875),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "${pokemon.pokemonId}",
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
