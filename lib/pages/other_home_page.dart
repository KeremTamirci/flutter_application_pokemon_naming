import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Text("Back"),
          onPressed: () {
            context.go("/");
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
