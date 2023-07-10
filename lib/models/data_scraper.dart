import '../main.dart';

var urlList = [];
var pokemonStatList = [];

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

Future<void> getPokemonimg() async {
  // sprites/home/front_default
  var url;
  for (var i = 0; i < pokemonList.length; i++) {
//    await getPokemonimg(pokemonList[i]["url"]);
    url = pokemonList[i]["url"];
    final imgresponse = await dio.get(url);
//    print(imgresponse.data["sprites"]["front_default"]);
    if (imgresponse.statusCode == 200) {
      pokemonimgList.add(imgresponse.data["sprites"]["front_default"]);
//    print(pokemonimgList);
    } else {
      print(imgresponse.statusCode);
    }
  }
}

Future<void> getPokemonStats() async {
  var url;
  for (var i = 0; i < urlList.length; i++) {
    url = urlList[i];
    final statresponse = await dio.get(url);
    //print(statresponse.data["stats"]);
    if (statresponse.statusCode == 200) {
      pokemonStatList.add([
        statresponse.data["stats"][0]["base_stat"],
        statresponse.data["stats"][1]["base_stat"],
        statresponse.data["stats"][2]["base_stat"]
      ]);
    } else {
      print(statresponse.statusCode);
    }
  }
}

Future<void> testFunc() async {
  for (var x in pokemonStatList) {
    print(x);
  }
}

Future<void> pokemonInit() async {
  await getPokemon();
  await fillURL();
  await getPokemonimg();
  await getPokemonStats();
  await testFunc();
  pokemonimgList.shuffle();
}
