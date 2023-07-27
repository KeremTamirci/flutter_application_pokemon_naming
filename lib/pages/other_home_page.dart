import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/data_scraper.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';
import '../models/pokemon.dart';
import 'register_page.dart';

var allPokemonIndex = 0;
var allPokemonList = [];

Future<void> getAllPokemon() async {
  await db.collection("/AllPokemon").get().then((event) {
    for (var doc in event.docs) {
      Pokemon pokemonTemp = Pokemon.fromJson(doc.data());
      // modelUsersPokemon.add(pokemon2);
      allPokemonList.add(pokemonTemp);
      print("${doc.id} => ${doc.data()["name"]}");
    }
    // print("Model User's Pokemon list length: ${modelUsersPokemon.length}");
  });
}

class OtherHomePage extends StatefulWidget {
  const OtherHomePage({super.key});

  @override
  State<OtherHomePage> createState() => _OtherHomePageState();
}

class _OtherHomePageState extends State<OtherHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.headlineSmall!.copyWith(
      color: theme.colorScheme.primary,
    );

    void tapped(index) {
      print("Image $index tapped.");
      allPokemonIndex = index;
    }

    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(allPokemonList.length, (index) {
          return Center(
            child: InkWell(
              onTap: () {
                print("Pokemon is tapped.");
                //tapped(index);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const DetailsPage()),
                // );
                //context.go('/details');
              },
              child: InkWell(
                onTap: () {
                  print("Pokemon is tapped.");
                  tapped(index);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const DetailsPage()),
                  // );
                  // context.go('/details');
                },
                child: Card(
                  child: SizedBox(
                    height: 200,
                    child: Wrap(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 155,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.network(
                              // unshuffledPokemonList[index]
                              allPokemonList[index].sprites.front_default,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            // unshuffledPokemonList[index].name,
                            allPokemonList[index].name,
                            style: style,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Text("Back"),
          onPressed: () {
            context.go("/");
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
