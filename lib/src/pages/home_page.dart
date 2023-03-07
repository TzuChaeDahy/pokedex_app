import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokedex_app/src/widgets/others/screen_spacing.dart';
import 'package:pokedex_app/src/widgets/pokemon_grid/pokemon_grid.dart';
import 'package:pokedex_app/src/widgets/search_bar/search_field.dart';
import 'package:pokedex_app/src/widgets/title_bar/initial_bar.dart';
import '../models/pokemon.dart';
import '../widgets/others/spacing.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Pokemon> pokemonList = [];

  Future fetchPokemonData() async {
    for (var i = 0; i < 60; i++) {
      var url = Uri.parse("https://pokeapi.co/api/v2/pokemon/${i + 1}");
      var response = await http.get(url);

      pokemonList.add(Pokemon.fromJson(await jsonDecode(response.body), i));
    }
    return pokemonList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenSpacing(
      children: [
        const InitialBar(),
        const Spacing(
          customHeight: 20,
        ),
        const SearchField(),
        const Spacing(
          customHeight: 25,
        ),
        FutureBuilder(
            future: fetchPokemonData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return PokemonGrid(pokemonList: snapshot.data);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            })
      ],
    ));
  }
}
