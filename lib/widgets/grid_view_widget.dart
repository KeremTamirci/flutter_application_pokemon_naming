import 'package:flutter/material.dart';
import '../services/data_scraper.dart';
import 'package:go_router/go_router.dart';

var pokemonIndex = 0;

class GridViewWidget extends StatefulWidget {
  GridViewWidget({
    super.key,
    required this.style,
    required this.modelList,
    required this.gridLength,
    this.isClickable = true,
    this.isShared = false,
  });

  final TextStyle style;
  final List<dynamic> modelList;
  int gridLength;
  bool isClickable;
  bool isShared;

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
      children: List.generate(widget.gridLength, (index) {
        return Center(
          child: InkWell(
            onTap: () {
              print("Pokemon is tapped.");
              tapped(index);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const DetailsPage()),
              // );
              if (widget.isClickable) {
                context.go('/details');
              }
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
                          widget.isShared
                              ? widget.modelList[index]["img"]
                              : widget.modelList[index].sprites.front_default,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        // existingPokemonList[index]["name"],
                        widget.isShared
                            ? widget.modelList[index]["name"]
                            : pokemonNames[index],
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
