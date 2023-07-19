import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/data_scraper.dart';
import 'package:go_router/go_router.dart';

var allPokemonIndex = 0;

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
        children: List.generate(pokemonList.length, (index) {
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
                  context.go('/details');
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
                              unshuffledPokemonList[index]
                                  .sprites
                                  .front_default,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            unshuffledPokemonList[index].name,
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
