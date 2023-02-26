import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          right: 15,
          left: 15,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Pokedex",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Search for a Pokemon by name or using its National Pokedex Number.",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFDAE2E4),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: const TextField(
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                            hintText: "Name or Number",
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
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
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),

      // appBar
      //Title
      //Text

      // searchBar
      // Row
      // Text Input
      // Filter Button

      // pokemons grid
      // 2 columns and infinite rows
    );
  }
}
