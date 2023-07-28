import 'package:cloud_firestore_platform_interface/src/set_options.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../main.dart';
import '../pages/register_page.dart';
import '../services/data_scraper.dart';

// Burada pokemon type'ında parametre tanımlayıp response'u buraya çek. Sonra buradan eriş o bilgiye.
var historyDatabase = [];
var favoritesDatabase = [];

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var history = <WordPair>[];

  void getNext() {
    history.add(current);
    historyDatabase.add(current.asPascalCase);
    // db.collection("/Users").doc(uid).update({"history": history});
    var userRef = db.collection('/Users').doc(uid);
    userRef.set({"history": historyDatabase}, SetOptions(merge: true));

    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favoritesDatabase.contains(current.asPascalCase)) {
      // favorites.remove(current);
      favoritesDatabase.remove(current.asPascalCase);
    } else {
      // favorites.add(current);
      favoritesDatabase.add(current.asPascalCase);
    }
    var userRef = db.collection('/Users').doc(uid);
    userRef.set({"favorites": favoritesDatabase}, SetOptions(merge: true));

    notifyListeners();
  }

  void toggleFavoriteList(pair) {
    if (favoritesDatabase.contains(pair)) {
      // favorites.remove(pair);
      favoritesDatabase.remove(pair);
    } else {
      // favorites.add(pair);
      favoritesDatabase.add(pair);
    }
    var userRef = db.collection('/Users').doc(uid);
    userRef.set({"favorites": favoritesDatabase}, SetOptions(merge: true));
    notifyListeners();
  }

  void toggleShareList(pokemonID, pokemonIndex) {
    if (sharedPokemonIDList.contains(pokemonID)) {
      sharedPokemonIDList.remove(pokemonID);
      db.collection("/SharedPokemon").doc(pokemonID).delete();
    } else {
      sharedPokemonIDList.add(pokemonID);
      var pokemonShare = {
        "pokemon_id": pokemonID,
        "uid": uid,
        "name": pokemonNames[pokemonIndex],
        "img": modelUsersPokemon[pokemonIndex].sprites.front_default,
      };
      db.collection("/SharedPokemon").doc(pokemonID).set(pokemonShare);
      // .add({"pokemon_id": pokemonID, "uid": uid});
    }
    notifyListeners();
  }

  void addPokemonName(pokemonName, index) {
//    pokemonMap[pokemonList[index]["name"]]["given_name"] = pokemonName;
    if (index == length1) {
      // pokemonNames.add(pokemonName.asPascalCase);
      pokemonNames.add(pokemonName);
    } else {
      // pokemonNames[index] = pokemonName.asPascalCase;
      pokemonNames[index] = pokemonName;
    }
    notifyListeners();
  }
}
