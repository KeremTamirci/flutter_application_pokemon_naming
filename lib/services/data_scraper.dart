import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/pokemon.dart';

import '../pages/register_page.dart';

//import 'package:flutter_application_1/models/pokemon_test.dart';

var urlList = [];
var jsonList = [];
var pokemonList = [];
var modelPokemonList = [];
var unshuffledPokemonList = [];
var pokemonNames = [];
var modelUsersPokemon = [];

var existingPokemonList = [];

//var pokemonMap = {};
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

Future<void> fillPokemonModel() async {
  var url;
  for (var i = 0; i < pokemonList.length; i++) {
    url = pokemonList[i]["url"];
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      Pokemon pokemon1 = Pokemon.fromJson(response.data);

      modelPokemonList.add(pokemon1);
      unshuffledPokemonList.add(pokemon1);
      pokemonimgCount++;
    } else {
      print(response.statusCode);
    }
  }
}

Future<void> pokemonInit() async {
  await getPokemon();
  await fillURL();
  await fillPokemonModel();
//  pokemonList.shuffle();
  modelPokemonList.shuffle();
//  print(modelPokemonList.length)s;

  print("Done");
}

Future<void> userInit() async {
  await db.collection("/Users/$uid/Pokemon").get().then((event) {
    for (var doc in event.docs) {
      // print(event.docs.length);
      count += 1;
      existingPokemonList.add(doc.data());
      Pokemon pokemon2 = Pokemon.fromJson(doc.data());
      // print(pokemon2);
      modelUsersPokemon.add(pokemon2);
      pokemonNames.add(doc.data()["name"]);
      // print("${doc.id} => ${doc.data()}");
    }
    print("Model User's Pokemon list length: ${modelUsersPokemon.length}");
  });
  await db.collection("/Users").doc(uid).get().then((event) {
    print("Doc data: ${event.data()}");
  });
}
