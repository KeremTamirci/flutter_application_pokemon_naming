import 'package:english_words/english_words.dart';
import 'package:flutter_application_1/models/data_scraper.dart';
import 'package:provider/provider.dart';

import '../main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/my_app_state.dart';
import '../pages/pokemon_page.dart';
import '../widgets/favorite_list_dialog.dart';
import '../widgets/grid_view_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemonMap[pokemonList[pokemonIndex]["name"]]["given_name"]
            .asPascalCase),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 250,
              child: Image.network(
                pokemonMap[pokemonList[pokemonIndex]["name"]]["img"],
//                pokemonimgList[pokemonIndex],
                fit: BoxFit.fitWidth,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Center(
                    child: RatingBarIndicator(
                      rating: (pokemonMap[pokemonList[pokemonIndex]["name"]]
                              ["stats"][0] /
                          20),
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 30.0,
                      direction: Axis.horizontal,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Center(
                    child: RatingBarIndicator(
                      rating: (pokemonMap[pokemonList[pokemonIndex]["name"]]
                              ["stats"][1] /
                          20),
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 30.0,
                      direction: Axis.horizontal,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Center(
                    child: RatingBarIndicator(
                      rating: (pokemonMap[pokemonList[pokemonIndex]["name"]]
                              ["stats"][2] /
                          20),
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 30.0,
                      direction: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          title: const Text('Change the name of your Pokemon!'),
                          content:
                              Wrap(alignment: WrapAlignment.center, children: [
                            FavoriteListDialog(appState: appState),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context, 'Cancel');
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                if (nameToAdd != WordPair("Nameless", " ")) {
                                  Navigator.pop(context, 'OK');
                                  appState.addPokemonName(
                                      nameToAdd, pokemonIndex);
                                }
                              },
                              child: const Text('OK'),
                            ),
                          ]));
                    },
                  );
                },
                child: Text("Change Name")),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}
