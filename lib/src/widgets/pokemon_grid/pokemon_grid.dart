import 'package:flutter/material.dart';
import 'package:pokedex_app/src/widgets/pokemon_grid/pokemon_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../models/pokemon.dart';

class PokemonGrid extends StatefulWidget {
  const PokemonGrid({
    super.key,
    required this.pokemonList,
    required this.fetchPokemonData,
  });

  final List<Pokemon> pokemonList;
  final Future<dynamic> Function() fetchPokemonData;

  @override
  State<PokemonGrid> createState() => _PokemonGridState();
}

class _PokemonGridState extends State<PokemonGrid> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void fetch() async {
    await widget.fetchPokemonData();
    setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SmartRefresher(
        controller: _refreshController,
        enablePullDown: false,
        enablePullUp: true,
        physics: const BouncingScrollPhysics(),
        footer: const ClassicFooter(
          loadStyle: LoadStyle.ShowAlways,
          idleText: "Pull up to load more pokemons",
          loadingText: "Searching for new pokemons",
        ),
        onLoading: fetch,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemCount: widget.pokemonList.length,
            itemBuilder: ((context, index) {
              return PokemonCard(
                pokemon: widget.pokemonList[index],
              );
            })),
      ),
    );
  }
}
