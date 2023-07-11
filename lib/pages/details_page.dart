import 'package:english_words/english_words.dart';
import 'package:flutter_application_1/services/data_scraper.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import '../viewmodel/my_app_state.dart';
import '../pages/pokemon_page.dart';
import '../widgets/favorite_list_dialog.dart';
import '../widgets/grid_view_widget.dart';
import '../widgets/rating_widget.dart';
import 'package:go_router/go_router.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
//    var mapLocation = pokemonMap[pokemonList[pokemonIndex]["name"]];
    var imageUsed = modelPokemonList[pokemonIndex].sprites.front_default;

    return Scaffold(
      appBar: AppBar(
//        title: Text(mapLocation["given_name"].asPascalCase),
        title: Text(
          pokemonNames[pokemonIndex].asPascalCase,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 350,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage("assets/images/pokemon_background.jpeg"),
                    fit: BoxFit.cover),
              ),
              child: Image.network(
                imageUsed,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // SizedBox(
            //   width: 250,
            //   child: Image.network(
            //     imageUsed,
            //     fit: BoxFit.fitWidth,
            //   ),
            // ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: RatingDetail(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Wrap(children: [
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            title:
                                const Text('Change the name of your Pokemon!'),
                            content: Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  FavoriteListDialog(appState: appState),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 'Cancel');
                                      //context.go("/");
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      if (nameToAdd !=
                                          WordPair("Nameless", " ")) {
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
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                  context.go("/");
                },
                child: const Text('Go back!'),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
