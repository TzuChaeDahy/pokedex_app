class Pokemon {
  final int pokemonId;
  final String pokemonUrl;
  final String pokemonName;
  final String pokemonMainType;
  final String? pokemonOtherType;

  const Pokemon({
    required this.pokemonId,
    required this.pokemonUrl,
    required this.pokemonName,
    required this.pokemonMainType,
    this.pokemonOtherType,
  });

  factory Pokemon.fromJson(Map<String, dynamic> response, int index) {
    return Pokemon(
      pokemonId: index + 1,
      pokemonUrl: response["sprites"]["other"]["official-artwork"]
          ["front_default"],
      pokemonName: response["species"]["name"],
      pokemonMainType: response["types"][0]["type"]["name"],
      pokemonOtherType: response["types"].length > 1
          ? response["types"][1]["type"]["name"]
          : null,
    );
  }
}
