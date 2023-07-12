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
                          modelPokemonList[index].sprites.front_default,
                          // pokemonMap[pokemonList[index]["name"]]["img"],
                          // pokemonimgList[index],
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        pokemonNames[index].asPascalCase,
                        // pokemonMap[pokemonList[index]["name"]]["given_name"]
                        //.asPascalCase,
                        // pokemonNameList[index].asPascalCase,
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
