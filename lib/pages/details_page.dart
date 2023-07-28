import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_application_1/services/data_scraper.dart';
import 'package:flutter_application_1/widgets/animated_opacity.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import '../main.dart';
import '../viewmodel/my_app_state.dart';
import '../pages/pokemon_page.dart';
import '../widgets/favorite_list_dialog.dart';
import '../widgets/grid_view_widget.dart';
import '../widgets/rating_widget.dart';
import 'package:go_router/go_router.dart';
import '../widgets/animated_image.dart';
import 'register_page.dart';

// Base experience ve weight de eklenebilir buraya value olarak. Direkt erişim var bunlara.

var animatedImage = modelPokemonList[pokemonIndex].sprites.front_default;

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
//    var mapLocation = pokemonMap[pokemonList[pokemonIndex]["name"]];
    // var imageUsed = modelPokemonList[pokemonIndex].sprites.front_default;
    // animatedImage = modelPokemonList[pokemonIndex].sprites.front_default;
    animatedImage = modelUsersPokemon[pokemonIndex].sprites.front_default;
    return Scaffold(
      appBar: AppBar(
//        title: Text(mapLocation["given_name"].asPascalCase),
        title: Text(
          pokemonNames[pokemonIndex],
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
              child: Stack(
                fit: StackFit.passthrough,
                children: [
                  AnimatedOpacityRepeat(),
                  AnimatedImage(
                    imageToAnimate: animatedImage,
                  ),
                ],
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
                  // Navigator.pop(context);
                  context.go("/");
                  // context.pop();
                },
                child: const Text('Go back!'),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Change the name of your Pokemon!'),
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
                                  // if (nameToAdd !=
                                  //     WordPair("Nameless", " ")) {
                                  if (nameToAddString != "") {
                                    Navigator.pop(context, 'OK');
                                    appState.addPokemonName(
                                        nameToAddString, pokemonIndex);
                                  }
                                  var data = {"name": nameToAddString};
                                  db
                                      .collection("/Users/$uid/Pokemon")
                                      .doc(documentIDList[pokemonIndex])
                                      .set(data, SetOptions(merge: true));
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text("Change Name")),
            ]),
            SizedBox(
              height: 120,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                // context.go("/");
                // context.pop();
                appState.toggleShareList(
                    documentIDList[pokemonIndex], pokemonIndex);
                // sharedPokemonIDList.add(documentIDList[pokemonIndex]);
              },
              child: sharedPokemonIDList.contains(documentIDList[pokemonIndex])
                  ? Text('Unshare')
                  : Text('Share'),
            ),
          ],
        ),
      ),
    );
  }
}
