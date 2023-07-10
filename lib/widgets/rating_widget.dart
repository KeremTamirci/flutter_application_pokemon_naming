import 'package:flutter_application_1/models/data_scraper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../widgets/grid_view_widget.dart';

class RatingDetail extends StatelessWidget {
  const RatingDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var mapLocation = pokemonMap[pokemonList[pokemonIndex]["name"]]["stats"];
    return Column(
      children: [
        RatingWidget(
          statName: Text("HP"),
          rating: (mapLocation[0] / 20),
        ),
        RatingWidget(
          statName: Text("Attack"),
          rating: (mapLocation[1] / 20),
        ),
        RatingWidget(
          statName: Text("Defence"),
          rating: (mapLocation[2] / 20),
        ),
      ],
    );
  }
}

class RatingWidget extends StatelessWidget {
  final double rating;
  final Text statName;

  RatingWidget({
    super.key,
    required this.statName,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(alignment: WrapAlignment.center, children: [
      SizedBox(width: 60, child: statName),
      SizedBox(
        width: 300,
        child: Center(
          child: RatingBarIndicator(
            rating: rating,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 30.0,
            direction: Axis.horizontal,
          ),
        ),
      ),
    ]);
  }
}
