import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/my_app_state.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onBackground,
    );
    var appState = context.watch<MyAppState>();
    if (favoritesDatabase.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'You have '
            '${favoritesDatabase.length} favorites:',
            style: style,
          ),
        ),
        for (var pair in favoritesDatabase)
          TextButton.icon(
              onPressed: () {
                appState.toggleFavoriteList(pair);
              },
              icon: Icon(Icons.favorite),
              label: Text(pair)),
      ],
    );
  }
}
