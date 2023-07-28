import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register_page.dart';
import 'package:flutter_application_1/services/data_scraper.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../viewmodel/my_app_state.dart';
import '../widgets/favorite_list_dialog.dart';
import '../widgets/grid_view_widget.dart';

var nameToAdd = WordPair("Nameless", " ");
var nameToAddString = "";

class TestPage extends StatefulWidget {
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.headlineSmall!.copyWith(
      color: theme.colorScheme.primary,
    );
    var appState = context.watch<MyAppState>();
    if (count <= pokemonimgCount) {
      length1 = count;
    } else {
      count = pokemonimgCount;
      length1 = pokemonimgCount;
    }
    nameToAdd = WordPair("Nameless", " ");
    nameToAddString = "";

    return Scaffold(
      body: ColoredBox(
        color: theme.colorScheme.surfaceVariant,
        child: GridViewWidget(
          style: style,
          modelList: modelUsersPokemon,
          gridLength: length1,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 75,
        width: 100,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(60))),
          onPressed: () {
            if (count < pokemonimgCount) {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    title: const Text('You caught a Pokemon!'),
                    content: Wrap(alignment: WrapAlignment.center, children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.network(
                          modelPokemonList[length1].sprites.front_default,
//                          pokemonMap[pokemonList[length1]["name"]]["img"],
//                        pokemonimgList[length1],
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text("Name your Pokemon")),
                      FavoriteListDialog(appState: appState)
                    ]),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                        },
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () async {
                          // if (nameToAdd != WordPair("Nameless", " ")) {
                          if (nameToAddString != "") {
                            var pokemonStats = modelPokemonList[length1].stats;
                            final user = <String, dynamic>{
                              "name": nameToAddString,
                              "sprites": {
                                "front_default": modelPokemonList[length1]
                                    .sprites
                                    .front_default,
                              },
                              "stats": [
                                {"base_stat": pokemonStats[0].base_stat},
                                {"base_stat": pokemonStats[1].base_stat},
                                {"base_stat": pokemonStats[2].base_stat}
                              ],
                            };
                            Navigator.pop(context, 'OK');
                            appState.addPokemonName(nameToAddString, length1);
                            print("uid seen from pokemon page: $uid");
                            // db
                            //     .collection("/Users/$uid/Pokemon")
                            //     .doc(nameToAdd.asPascalCase)
                            //     .set({
                            //   "name": nameToAdd.asPascalCase,
                            //   "img": modelPokemonList[length1]
                            //       .sprites
                            //       .front_default,
                            // }).onError((e, _) =>
                            //         print("Error writing document: $e"));
                            db.collection("/Users/$uid/Pokemon").add(user);
                            modelUsersPokemon.add(modelPokemonList[length1]);
                            setState(() {
                              count++;
                            });
                          }
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            }
          },
          child: Text("Catch"),
        ),
      ),
    );
  }
}
