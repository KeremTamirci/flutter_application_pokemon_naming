import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../services/data_scraper.dart';
import '../widgets/grid_view_widget.dart';

class SharedPokemonPage extends StatefulWidget {
  const SharedPokemonPage({super.key});

  @override
  State<SharedPokemonPage> createState() => _SharedPokemonPageState();
}

class _SharedPokemonPageState extends State<SharedPokemonPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.headlineSmall!.copyWith(
      color: theme.colorScheme.primary,
    );
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go("/");
        },
        child: Text("Back"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: theme.colorScheme.surfaceVariant,
      body: Center(
        child: GridViewWidget(
          style: style,
          modelList: sharedPokemonList,
          gridLength: sharedPokemonList.length,
          isClickable: false,
          isShared: true,
        ),
      ),
    );
  }
}
