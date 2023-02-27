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
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Pokedex",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Search for a Pokemon by name or using its National Pokedex Number.",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
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
                      textAlignVertical: TextAlignVertical.center,
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
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                crossAxisCount: 2,
                children: List.generate(20, (index) {
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
                          const Text("Bulbasaur Image"),
                          Column(
                            children: [
                              const Text(
                                "Bulbasaur",
                                style: TextStyle(
                                  color: Color(0xFF575875),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "00$index",
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
                }),
              ),
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
