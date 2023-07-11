import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../services/data_scraper.dart';

// Burada pokemon type'ında parametre tanımlayıp response'u buraya çek. Sonra buradan eriş o bilgiye.

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var history = <WordPair>[];

  void getNext() {
    history.add(current);
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }

  void toggleFavoriteList(pair) {
    if (favorites.contains(pair)) {
      favorites.remove(pair);
    } else {
      favorites.add(pair);
    }
    notifyListeners();
  }

  void addPokemonName(pokemonName, index) {
//    pokemonMap[pokemonList[index]["name"]]["given_name"] = pokemonName;
    if (index == length1) {
      pokemonNames.add(pokemonName);
    } else {
      pokemonNames[index] = pokemonName;
    }
//    print(pokemonMap[pokemonList[index]["name"]]);
    notifyListeners();
  }
}
