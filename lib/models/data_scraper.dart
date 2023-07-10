import 'package:dio/dio.dart';

var urlList = [];
var pokemonStatList = [];
var pokemonStatMap = {};

var pokemonMap = {};

var pokemonimgCount = 0;

final dio = Dio();
var jsonList;
var pokemonList;
var pokemonimgList = [];
var pokemonNameList = [];
var availableNames = [];
int count = 0;
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

Future<void> testFunc() async {
  for (var x = 0; x < pokemonStatList.length; x++) {
//    print(pokemonStatList[x]);
  }
}

Future<void> pokemonInit() async {
  await getPokemon();
  await fillURL();
//  await getPokemonimg();
//  await getPokemonStats();
  await fillPokemonMap();
//  print(pokemonMap);
  await testFunc();
  pokemonList.shuffle();
  print("Done");
//  pokemonimgList.shuffle();
}
