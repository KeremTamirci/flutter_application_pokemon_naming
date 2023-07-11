import 'package:english_words/english_words.dart';
import 'package:flutter_application_1/services/data_scraper.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import '../viewmodel/my_app_state.dart';
import '../pages/pokemon_page.dart';
import '../widgets/favorite_list_dialog.dart';
import '../widgets/grid_view_widget.dart';
import '../widgets/rating_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var mapLocation = pokemonMap[pokemonList[pokemonIndex]["name"]];
    var imageUsed = modelPokemonList[pokemonIndex].sprites.front_default;
    return Scaffold(
      appBar: AppBar(
        title: Text(mapLocation["given_name"].asPascalCase),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 250,
              child: Image.network(
                imageUsed,
//                mapLocation["img"],
//                pokemonimgList[pokemonIndex],
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: RatingDetail(),
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
