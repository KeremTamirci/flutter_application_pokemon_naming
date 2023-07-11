import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/pokemon.dart';
import 'package:flutter_application_1/models/pokemon_test.dart';

var urlList = [];
var jsonList = [];
var pokemonList = [];
var modelPokemonList = [];

var pokemonMap = {};
final dio = Dio();

int count = 0;
int pokemonimgCount = 0;
var length1 = 0;

void main() {
//  getHttp();
  print("Bu da print işte");
  print(length1.toString());
}

void getHttp() async {
  final response = await dio.get('https://dummyjson.com/products');
//  print(response);
  if (response.statusCode == 200) {
    jsonList = response.data["products"] as List;
  } else {
    print(response.statusCode);
  }
}

Future<void> fillURL() async {
  for (var i = 0; i < pokemonList.length; i++) {
    urlList.add(pokemonList[i]["url"]);
  }
}

Future<void> getPokemon() async {
  final pokemonresponse = await dio.get('https://pokeapi.co/api/v2/pokemon');
  print(pokemonresponse.data["results"][0]);
  if (pokemonresponse.statusCode == 200) {
    pokemonList = pokemonresponse.data["results"] as List;
    //print(pokemonList);
  } else {
    print(pokemonresponse.statusCode);
  }
}

Future<void> fillPokemonMap() async {
  var url;
  var name;
  for (var i = 0; i < pokemonList.length; i++) {
    url = pokemonList[i]["url"];
    final response = await dio.get(url);
    name = pokemonList[i]["name"];
    if (response.statusCode == 200) {
      //response'u modele çevir

      Pokemon pokemon1 = Pokemon.fromJson(response.data);
      print(pokemon1.stats?[0].base_stat);
      modelPokemonList.add(pokemon1);

//      PokemonTest pokemon2 = PokemonTest.fromJson(response.data);
//      print(pokemon2.sprites);

      pokemonimgCount++;
      pokemonMap[name] = {};
      pokemonMap[name]["img"] = response.data["sprites"]["front_default"];
      pokemonMap[name]["stats"] = [
        response.data["stats"][0]["base_stat"],
        response.data["stats"][1]["base_stat"],
        response.data["stats"][2]["base_stat"]
      ];
    } else {
      print(response.statusCode);
    }
  }
}

Future<void> pokemonInit() async {
  await getPokemon();
  await fillURL();
  await fillPokemonMap();
  pokemonList.shuffle();
  print(modelPokemonList.length);
  print("Done");
}
