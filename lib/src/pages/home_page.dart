import 'package:flutter/material.dart';
import 'package:pokedex_app/src/widgets/others/screen_spacing.dart';
import 'package:pokedex_app/src/widgets/pokemon_grid/pokemon_grid.dart';
import 'package:pokedex_app/src/widgets/search_bar/search_field.dart';
import 'package:pokedex_app/src/widgets/title_bar/initial_bar.dart';
import '../widgets/others/spacing.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ScreenSpacing(
      children: [
        InitialBar(),
        Spacing(
          customHeight: 20,
        ),
        SearchField(),
        Spacing(
          customHeight: 25,
        ),
        PokemonGrid(),
      ],
    ));
  }
}
