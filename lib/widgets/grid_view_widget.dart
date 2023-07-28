import 'package:flutter/material.dart';
import '../services/data_scraper.dart';
import 'package:go_router/go_router.dart';

var pokemonIndex = 0;

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({
    super.key,
    required this.style,
  });

  final TextStyle style;

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  void tapped(index) {
    print("Image $index tapped.");
    pokemonIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(length1, (index) {
        return Center(
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
              color: theme.colorScheme.surfaceVariant,
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
                          // existingPokemonList[index]["img"],
                          // modelPokemonList[index].sprites.front_default,
                          modelUsersPokemon[index].sprites.front_default,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        // existingPokemonList[index]["name"],
                        pokemonNames[index],
                        style: widget.style,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
