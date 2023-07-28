import 'package:flutter_application_1/services/data_scraper.dart';

import 'package:flutter/material.dart';
import '../widgets/grid_view_widget.dart';

class RatingDetail extends StatelessWidget {
  const RatingDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
//    var mapLocation = pokemonMap[pokemonList[pokemonIndex]["name"]]["stats"];
    var pokemonStats = modelUsersPokemon[pokemonIndex].stats;
    final theme = Theme.of(context);
    final style = theme.textTheme.headlineSmall!.copyWith(
      color: theme.colorScheme.onBackground,
    );
    return Column(
      children: [
        RatingWidget(
          statName: Text(
            "HP",
            style: style,
            textAlign: TextAlign.center,
          ),
//          rating: (mapLocation[0] / 20),
          rating: (pokemonStats[0].base_stat),
        ),
        RatingWidget(
          statName: Text(
            "Attack",
            style: style,
            textAlign: TextAlign.center,
          ),
//          rating: (mapLocation[1] / 20),
          rating: (pokemonStats[1].base_stat),
        ),
        RatingWidget(
          statName: Text(
            "Defence",
            style: style,
            textAlign: TextAlign.center,
          ),
//          rating: (mapLocation[2] / 20),
          rating: (pokemonStats[2].base_stat),
        ),
      ],
    );
  }
}

class RatingWidget extends StatelessWidget {
  final int rating;
  final Text statName;

  RatingWidget({
    super.key,
    required this.statName,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(alignment: WrapAlignment.center, children: [
      SizedBox(width: 100, child: statName),
      SizedBox(
        width: 300,
        child: Center(
          child: SizedBox(
            width: 200,
            child: Wrap(
              children: [
                LinearProgressIndicator(
                  minHeight: 12,
                  value: rating / 100,
                ),
                Text("$rating/100"),
              ],
            ),
          ),

          // child: RatingBarIndicator(
          //   rating: rating,
          //   itemBuilder: (context, index) => Icon(
          //     Icons.star,
          //     color: Colors.amber,
          //   ),
          //   itemCount: 5,
          //   itemSize: 30.0,
          //   direction: Axis.horizontal,
          // ),
        ),
      ),
    ]);
  }
}
